config = require "lapis.config"

config "test", ->
  postgres {
    database: "datnew_test"
  }

config "development", ->
  join_delay 2

  host "localhost"
  name "temp_name"

  channels { "#datnew" }

  admin_password "admin"

  extensions {
    "url_titles"
    "admin"
    "stats"
  }

  postgres {
    database: "datnew"
  }

  systemd {
    user: true
  }


