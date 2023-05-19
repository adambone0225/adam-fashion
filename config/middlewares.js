module.exports = [
  "strapi::errors",
  "strapi::security",
  {
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
      keepHeaderOnError: true,
    },
  },
  "strapi::poweredBy",
  "strapi::logger",
  "strapi::query",
  "strapi::body",
  "strapi::session",
  "strapi::favicon",
  "strapi::public",
];
