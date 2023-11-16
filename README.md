# Basic IoT server setup

**Do not use in production!!!** Some of the default settings in this repo are inherently unsafe to use in publicly exposed things.

## Deploy steps:
1. run the setup.sh script
2. run `docker compose up -d`
3. run `docker compose exec influxdb influx auth list` to get the user token to use in graphana and node red to communicate with the database
4. have fun configuring graphana and node red to your liking. You have an MQTT broker to send messages trough! 


## Default logins
- Graphana: admin/admin
- node-red: configured in setup.sh
- influxdb: see step 3 in deploy!
