require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/campaigns/index" do
  include CampaignsHelper

  before do
    login_and_assign
  end

  it "should render [campaign] template with @campaigns collection if there are campaigns" do
    assign(:campaigns, [ FactoryGirl.create(:campaign, :id => 42) ].paginate)

    render :template => 'campaigns/index', :formats => [:js]
    
    rendered.should have_rjs("campaigns") do |rjs|
      with_tag("li[id=campaign_#{42}]")
    end
    rendered.should have_rjs("paginate")
  end

  it "should render [empty] template if @campaigns collection if there are no campaigns" do
    assign(:campaigns, [].paginate)

    render :template => 'campaigns/index', :formats => [:js]
    
    rendered.should have_rjs("campaigns") do |rjs|
      with_tag("div[id=empty]")
    end
    rendered.should have_rjs("paginate")
  end

end
