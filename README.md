[![Gem Version](https://badge.fury.io/rb/habluhablu.svg)](https://badge.fury.io/rb/habluhablu)

# HabluHablu

HabluHablu is a CLI written in Ruby, which allows you to generate language file with translations of the most useful phrases.

## Supported languages

- English
- Polish
- Arabic
- Spanish
- Hebrew
- If you want to help me out and add your language, don't hesitate!
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

Generate file for a specific language using `habluhablu -l <symbol>` command.  
Generate an example language file using `habluhablu -l example` command (it generates empty file with keywords to fill).     
Generate files for a more languages using `habluhablu -m <symbols>(separated by '_')` command.    
[List of symbols](https://www.w3.org/International/O-charset-lang.html)   
   
`habluhablu --help`

There is also an option to add countries flag using bootstrap (for more informations go to languages/Countries_Flags.md).

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/patrickgramatowski/habluhablu_gem.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
