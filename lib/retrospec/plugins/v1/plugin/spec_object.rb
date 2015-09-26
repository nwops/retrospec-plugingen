require 'facets'
require 'retrospec/plugins/v1/context_object'
module PluginGen

  class SpecObject < Retrospec::Plugins::V1::ContextObject
    attr_reader :instance, :module_path, :capitalized_plugin_name, :plugin_name, :snakecase_plugin_name

    def initialize(mod_path, data)
      @instance = data
      @module_path = mod_path
    end

    def snakecase_plugin_name
      @snakecase_plugin_name ||= plugin_name.snakecase
    end

    def capitalized_plugin_name
      @capitalized_plugin_name ||= plugin_name.capitalize
    end

    # the name of the plugin you wish to create, automatically is inherited from the basename of the module_path
    def plugin_name
      @plugin_name ||= instance[:name]
    end
  end
end
