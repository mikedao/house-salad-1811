require 'rails_helper'

describe MemberSearchResultFacade do
  it "exists" do
    attributes = {}
    msrf = MemberSearchResultFacade.new(attributes)

    expect(msrf).to be_a(MemberSearchResultFacade)
  end

  context "instance methods" do
    context "#members_count" do
      it "returns the count of members" do
        attributes = {state: "CO"}
        msrf = MemberSearchResultFacade.new(attributes)

        expect(msrf.members_count).to eq(7)
      end


    end
  
  end
end