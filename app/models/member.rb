class Member
  attr_reader :name,
              :role,
              :party,
              :district
  def initialize(data)
    @name = data[:name]
    @role = data[:role]
    @party = data[:party]
    @district = data[:district]

  end

end
