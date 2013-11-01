require 'spec_helper'

describe Site do

  it "is valid with name, url, width and height" do
    expect(build :site).to be_valid
  end

  it "is invalid without name" do
    site = build(:site, name: nil)
    expect(site).to have(1).errors_on(:name)
  end

  it "is invalid without url" do
    site = build(:site, url: nil)
    expect(site).to have(1).errors_on(:url) 
  end

  it "is invalid without width" do
    site = build(:site, width: nil)
    expect(site).to have(1).errors_on(:width) 
  end

  it "is invalid without height" do
    site = build(:site, height: nil)
    expect(site).to have(1).errors_on(:height) 
  end 

  it "is invalid with a duplicate url" do
    create(:site, url: "http://www.baidu.com")
    site = build(:site, url: "http://www.baidu.com")
    expect(site).to have(1).errors_on(:url) 
  end

end