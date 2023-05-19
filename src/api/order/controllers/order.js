"use strict";
const stripe = require("stripe")(process.env.STRIPE_KEY);

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::order.order", ({ strapi }) => ({
  // add order data
  async create(ctx) {
    const { products } = ctx.request.body;

    const lineItems = await Promise.all(
      products.map(async (product) => {
        const item = await strapi
          .service("api::product.product")
          .findOne(product.id);

        return {
          quantity: product.quantity,
          price_data: {
            currency: "hkd",
            product_data: {
              name: item.title,
            },
            unit_amount: item.price * 100,
          },
        };
      })
    );

    try {
      const session = await stripe.checkout.sessions.create({
        line_items: lineItems,
        mode: "payment",
        success_url: `${process.env.CLIENT_URL}?success=true`,
        cancel_url: `${process.env.CLIENT_URL}?canceled=true`,
        payment_method_types: ["card"],
      });

      await strapi.service("api::order.order").create({
        data: {
          products,
          stripeID: session.id,
        },
      });
      console.log(ctx.request);
      console.log(ctx.response);
      ctx.response.status = 302;
      ctx.body = { url: session.url };
    } catch (err) {
      ctx.response.status = 501;
      console.log(err);
      return err;
    }
  },
}));
