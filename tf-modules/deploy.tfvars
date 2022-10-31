rg_name = "deploy-rg"

secrets = {
  "Serilog--WriteTo--1--Args--instrumentationKey" = {
    secret = "$Serilog__WriteTo__1__Args__instrumentationKey"
  }
  "EnvironmentSettings--IsDevelopment" = {
    secret = "$EnvironmentSettings__IsDevelopment"
  }
}
