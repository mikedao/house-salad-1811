class MemberSearchResultFacade
  def initialize(attributes)
    @state = attributes[:state]
  end

  def members_count
    members.count
  end

  def members 
    response = service.get_members(@state)[:results]
    response.map do |member_data|
      Member.new(member_data)
    end
  end

  def service
    PropublicaService.new
  end
end