require 'spec_helper'

describe "RetrospecPlugin" do
  let(:gen) do
    Retrospec::Plugins::V1::PluginGen.new('/tmp')
  end
  it "can create plugin instance" do
     expect(gen).to be_a Retrospec::Plugins::V1::PluginGen
  end
end
