class Weather

  @w_api = Wunderground.new

  def self.boston_conditions
    Rails.cache.fetch('boston_conditions', expires_in: 30.minutes) do
      @w_api.conditions_for("02116")["current_observation"]
    end
  end

  def self.boston_forecast
    Rails.cache.fetch('boston_forecast', expires_in: 30.minutes) do
      @w_api.forecast_for("MA", "Boston")["forecast"]["simpleforecast"]["forecastday"]
    end
  end

end
