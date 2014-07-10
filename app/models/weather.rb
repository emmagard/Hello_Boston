class Weather

  @w_api = Wunderground.new

  def self.boston_conditions
    @w_api.conditions_for("02116")["current_observation"]
  end

  def self.boston_forecast
    @w_api.forecast_for("MA", "Boston")["forecast"]["simpleforecast"]["forecastday"][0]
  end

end
