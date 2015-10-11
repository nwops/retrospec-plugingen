require 'retrospec/plugins/v1'
require_relative 'spec_object'
require_relative 'version'
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

        def self.run_cli(global_opts, global_config, plugin_config, args=ARGV)
          # a list of subcommands for this plugin
          sub_commands  = []
          if sub_commands.count > 0
            sub_command_help = "Subcommands:\n#{sub_commands.join("\n")}\n"
          else
            sub_command_help = ""
          end
          plugin_opts = Trollop::options do
            version "#{Retrospec::PluginGen::VERSION} (c) Corey Osman"
            banner <<-EOS
A generator to create plugins for retrospec\n
#{sub_command_help}

            EOS
            opt :name, "The name of the new plugin", :require => false, :short => '-n', :type => :string, :default => File.basename(File.expand_path(global_opts[:module_path]))
            stop_on sub_commands
          end
          # the passed in options will always override the config file
          plugin_data = plugin_opts.merge(global_config).merge(global_opts).merge(plugin_config).merge(plugin_opts)
          # define the default action to use the plugin here, the default is run
          sub_command = (args.shift || :run).to_sym
          # create an instance of this plugin
          plugin = self.new(plugin_data[:module_path],plugin_data)
          # check if the plugin supports the sub command
          if plugin.respond_to?(sub_command)
            plugin.send(sub_command)
          else
            puts "The subcommand #{sub_command} is not supported or valid"
            exit 1
          end
        end

        private

        # this is the name of the plugin the user wants to create
        def external_plugin_name
          context.plugin_name
        end

        def create_main_file
          file_path = File.join(module_path, 'lib', "retrospec-#{external_plugin_name}.rb" )
          template  = File.join(template_dir, 'retrospec-main-plugin-file.rb.retrospec.erb' )
          safe_create_template_file(file_path, template, context)
        end

        def create_plugin_file
          file_path = File.join(module_path, 'lib', 'retrospec', 'plugins', 'v1', 'plugin', "#{external_plugin_name}.rb" )
          template  = File.join(template_dir, 'plugin-name.rb.retrospec.erb' )
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
