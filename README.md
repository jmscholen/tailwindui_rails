# TailwinduiRails

This gem is built to allow easy start of a Rails 6 project to use TailwindUI components. This is currently only a set of generators to do the mundane work to setting up Rails 6 with TailwindUI. There are no components loaded within this gem. A license must be purchased from tailwindui.com.

This gem is heavily influence from [tailwindcss-rails](https://github.com/IcaliaLabs/tailwindcss-rails).

## Installation

This has not been tested with versions of Rails earlier than 6. Since webpacker is not installed with earlier versions, you may be able to install this gem with the webpacker gem in addition to the following instructions..

Add this line to your application's Gemfile:

```ruby
gem 'tailwindui_rails'
```

And then execute:

    $ bundle

    $ bundle exec rails g tailwindui_rails:install

The above install command will perform the following task:

1. Add tailwindcss and @tailwind/ui with `yarn`
2. Initialize tailwindcss and update the tailwind config file for use with TailwindUI components.
3. Update the application layout page for use with alpine js recommended from tailwindUI docs.
4. Setup tailwindcss
4. Configure postcss config file for use with tailwindcss and tailwindui components.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tailwindui_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TailwinduiRails project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tailwindui_rails/blob/master/CODE_OF_CONDUCT.md).
