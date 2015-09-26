# retrospec-plugin_gen
[![Gem Version](https://badge.fury.io/rb/retrospec.svg)](http://badge.fury.io/rb/retrospec)

## Summary
This plugin is the starting point to create plugins for retrospec.  Its a widget for creating widgets!
Use the plugin to generate the retrospec plugin layout, along with basic tests and documentation.

## Install
`gem install retrospec-plugingen`

## Usage

To create a new plugin for retrospec use the following command `retrospec -m /tmp/test4 plugingen`.
By default plugingen will use the current directory as the name of the plugin.  
If you wish to override this name please pass the `-n` option. `retrospec -m /tmp/test4 plugingen -n test_plugin`

```shell
% retrospec -m /tmp/test4 plugingen -h
% 
Options:
  -n, --name=<s>    The name of the new plugin (default: test4)
  -h, --help        Show this message
MacBook-Pro~ % retrospec -m /tmp/test4 plugingen   
!! /Users/cosman/.retrospec/config.yaml.sample already exists
 + /tmp/test4/
 + /tmp/test4/.gitignore
 + /tmp/test4/.rspec
 + /tmp/test4/Gemfile
 + /tmp/test4/LICENSE.txt
 + /tmp/test4/README.md
 + /tmp/test4/Rakefile
 + /tmp/test4/lib/
 + /tmp/test4/lib/retrospec/
 + /tmp/test4/lib/retrospec/plugins/
 + /tmp/test4/lib/retrospec/plugins/v1/
 + /tmp/test4/lib/retrospec/plugins/v1/plugin/
 + /tmp/test4/lib/retrospec/plugins/v1/plugin/spec_object.rb
 + /tmp/test4/spec/
 + /tmp/test4/spec/plugin_spec.rb
 + /tmp/test4/spec/spec_helper.rb
 + /tmp/test4/lib/retrospec-test4.rb
 + /tmp/test4/lib/retrospec/plugins/v1/plugin/test4.rb
```

Once the plugin directory has been created you are ready to start development on your plugin.  This plugin
produces a working retrospec plugin with unit tests.  So just add your code and go.  The templates are based off the jeweler gem
so if you currently use [jeweler](https://github.com/technicalpickles/jeweler) you should feel right at home.  

At a minimum run:

```
bundle install
bundle exec rake -T
bundle exec rake version:write
# edit the Rakefile and fill with our gem information
bundle exec rake spec
bundle exec rake gemspec (recreate the gemspec)
bundle exec rake version:bump:minor (when releasing)
bundle exec git:release 
bundle exec release (send to rubygems.org)
# submit a PR to retrospec and tell me about your new plugin
https://github.com/nwops/retrospec/blob/master/available_plugins.yaml


## Contributing to retrospec-plugingen
Got a change you want to see in this plugin?  Submit a PR.

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2015 Corey Osman. See LICENSE.txt for
further details.

