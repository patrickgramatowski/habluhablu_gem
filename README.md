# HabluHablu

HabluHablu is a gem which allows you to generate language file with translations of the most useful phrases.

There is also an option to add countries flag using bootstrap (for more informations go to languages/Countries_Flags.md).

## Supported languages

- English
- Polish
- Spanish
- German
- French
- Hebrew
- If you want to help me out and add your language, then contact me patrick.gramatowski@gmail.com
- In progress...

### Installation

Add this line to your application's Gemfile:

Install [I18n gem](https://github.com/ruby-i18n/i18n)

```ruby
gem 'habluhablu'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install habluhablu

### Usage

Generate file for a specific language using `hablu <language>` command.

### Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/habluhablu.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
