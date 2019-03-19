class PropublicaService

  def get_members(state)
    get_json("congress/v1/members/house/#{state}/current.json")
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.propublica.org/") do |faraday|
      faraday.headers["X-API-KEY"] = ENV["propublica_key"]
      faraday.adapter Faraday.default_adapter
    end
  end
end