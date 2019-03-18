class PropublicaService

  def get_members(state)

    conn = Faraday.new do |faraday|
      faraday.headers["X-API-KEY"] = ENV["propublica_key"]
      faraday.adapter Faraday.default_adapter
    end
    
    response = conn.get("https://api.propublica.org/congress/v1/members/house/#{state}/current.json")
    JSON.parse(response.body, symbolize_names: true)
  end
end