module.exports = {
  apps: [
    {
      name: "App Entry",
      script: "server.js",
      instances: "max",
      autorestart: true,
      watch: false,
      max_memory_restart: "1G",
      env: {
        NODE_ENV: "production",
      },
    },
  ],
};
