require 'retrospec/plugins/v1'
require_relative 'spec_object'

# this plugin will generate the necessary scaffolding in order to build your own
# retrospec plugin.
module Retrospec
  module Plugins
    module V1
      class PluginGen < Retrospec::Plugins::V1::Plugin
        attr_reader :template_dir, :context

        def initialize(supplied_module_path='.',config={})
          super
          @context = ::PluginGen::SpecObject.new(module_path, config)
        end

        def run
          safe_create_module_files(template_dir, module_path, context)
          create_main_file
          create_plugin_file
        end

        def self.cli_options(global_opts)
          Trollop::options do
            opt :name, "The name of the new plugin", :require => false, :short => '-n', :type => :string, :default => File.basename(File.expand_path(global_opts[:module_path]))
          end
        end

        private

        # this is the name of the plugin the user wants to create
        def external_plugin_name
          context.plugin_name
        end

        def create_main_file
          file_path = File.join(module_path, 'lib', "retrospec-#{external_plugin_name}.rb" )
          template  = File.join(template_dir, 'retrospec-main-plugin-file.rb.erb' )
          safe_create_template_file(file_path, template, context)
        end

        def create_plugin_file
          file_path = File.join(module_path, 'lib', 'retrospec', 'plugins', 'v1', 'plugin', "#{external_plugin_name}.rb" )
          template  = File.join(template_dir, 'plugin-name.rb.erb' )
          safe_create_template_file(file_path, template, context)
        end

        # the template directory located inside this plugin gem
        def template_dir
          @template_dir ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
        end
      end
    end
  end
end
