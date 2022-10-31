rg_name = "deploy-rg"

secrets = {
  "Serilog--WriteTo--1--Args--instrumentationKey" = {
    key    = "Serilog--WriteTo--1--Args--instrumentationKey"
    secret = "new value"
  }
  "EnvironmentSettings--IsDevelopment" = {
    key    = "EnvironmentSettings--IsDevelopment"
    secret = "new value2///:https"
  }
}
