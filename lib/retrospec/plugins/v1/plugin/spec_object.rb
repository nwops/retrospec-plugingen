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
      plugin_name.capitalize
    end

    def plugin_name
      instance[:name]
    end

    def get_binding
      binding
    end
  end
end
