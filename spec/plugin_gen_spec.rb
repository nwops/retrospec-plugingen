require 'spec_helper'
require 'retrospec'

describe "RetrospecPlugin" do
  let(:gen) do
    Retrospec::Plugins::V1::PluginGen.new('/tmp/testplugin_dir', {:name => 'testplugin', :config1 => 'test'})
  end

  it "can create plugin instance" do
    expect(gen).to be_a Retrospec::Plugins::V1::PluginGen
  end

  it 'can get config data' do
    expect(gen.config_data[:config1]).to eq('test')
  end

  it 'can module_path from context' do
    expect(gen.context.module_path).to eq('/tmp/testplugin_dir')
  end

  it 'can get module name' do
    expect(gen.context.plugin_name).to eq('testplugin')
  end

  it 'can get capital module name' do
    expect(gen.context.capitalized_plugin_name).to eq('Testplugin')
  end

  it 'can run without error' do
    expect{gen.run}.to_not raise_error
  end
end
