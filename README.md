# Gem-template

This is only a template to create other gems.

## Usage

Run `./rename.sh CLASS_NAME` to rename the files, after that, you can erase it.

Example:

```ruby
./rename.sh Foo::Bar
```

## Manual Setup

1. Create your repository using this repo as template
2. Change some files:
  - Path /lib/mygem -> Change for you path directoy.
    - E.g: /lib/foo/bar
  - File /lib/mygem -> Change for your main module name
    - Don't forget to create a file rb in /lib for Rails default import
      - E.g: For a gem called activemessage-core and the main module is ActiveMessage::Core, create a file in /lib called activemessage-core.rb and require 'active_message/core' inside that
    - Don't forget to create da main module nested
      - E.g: For a module ActiveMessage::Core, it should be /lib/active_message/core.rb
  - Change gem name in /bin/console
  - Change spec mygem_spec.rb
  - Chagem gem name in spec_helper.rb
  - Change gemspec
    - Filename
    - Summary
    - Description
    - Dependecies
  - Delete README.md and rename README-template.md to README.md and change its content
    - Change the follow variables:
      - CHANGE_MY_NAME_PLEASE
      - CHANGE_MY_DESCRIPTION_PLEASE
      - CHANGE_MY_GEM_NAME_PLEASE
      - CHANGE_MY_INSTALLATION_PLEASE
      - CHANGE_MY_SETTINGS_PLEASE
      - CHANGE_MY_REPO_NAME_PLEASE
      - CHANGE_MY_CODE_CLIMATE_ACCOUNT_PLEASE
  - Delete rename.sh
3. Change code climate key in file .travis.yml
4. Run bundle && bundle exec rubocop && bundle exec rspec to check if everything is ok

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License][mit_license_page].

## Code of Conduct

Everyone interacting in the Rails::Healthcheck project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct][code_of_conduct_page].

[code_of_conduct_page]: https://github.com/linqueta/rails-healthcheck/blob/master/CODE_OF_CONDUCT.md
[mit_license_page]: https://opensource.org/licenses/MIT