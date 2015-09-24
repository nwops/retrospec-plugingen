module PluginGen

  class SpecObject
    attr_accessor :instance

    def initialize(mod_path, data)
      @instance = data
      @module_path = mod_path
    end

    def module_path
      @module_path
    end

    def capitalized_plugin_name
      module_name.capitalize
    end

    def module_name
      instance['plugin_name']
    end

    def get_binding
      binding
    end
  end
end
