require 'spec_helper'
describe CcMenu::Status do
  it "sets name correctly" do
    CcMenu::Status.set :status => :failed, :activity => :sleeping
    expect(CcMenu::Status.name).to eq("Dummy")
  end

  it "sets build status correctly" do
    CcMenu::Status.set :status => :success, :activity => :sleeping
    expect(CcMenu::Status.build_status).to eq("Success")
  end

  it "sets activity correctly" do
    CcMenu::Status.set :status => :success, :activity => :building
    expect(CcMenu::Status.activity).to eq("Building")
  end

  it "sets root url to nil" do
    CcMenu::Status.set :status => :failed, :activity => :sleeping
    expect(CcMenu::Status.url).to eq(nil)
  end
  
end