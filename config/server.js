module.exports = ({ env }) => ({
  host: env("HOST", "0.0.0.0"),
  port: env.int("PORT", 1337),
  app: {
    keys: env.array("APP_KEYS"),
  },
  name: "strapi::cors",
  config: {
    headers: [
      "accept-language",
      "Token",
      "Content-Type",
      "Authorization",
      "Accept",
      "Origin",
    ],
    origin: ["http://localhost:1337/api/orders", "http://localhost:3000"],
  },
  webhooks: {
    populateRelations: env.bool("WEBHOOKS_POPULATE_RELATIONS", false),
  },
});
