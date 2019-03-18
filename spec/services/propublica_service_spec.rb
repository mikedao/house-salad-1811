require 'rails_helper'

describe PropublicaService do
  it "exists" do
    service = PropublicaService.new

    expect(service).to be_a(PropublicaService)
  end

  context "instance methods" do
    it "gets members" do
      service = PropublicaService.new

      result = service.get_members("CO")

      expect(result).to be_a(Hash)
      expect(result).to have_key(:results)
    end
  end
end