[![Gem Version](https://badge.fury.io/rb/habluhablu.svg)](https://badge.fury.io/rb/habluhablu)
[![Build Status](https://travis-ci.org/patrickgramatowski/habluhablu_gem.svg?branch=master)](https://travis-ci.org/patrickgramatowski/habluhablu_gem)

# HabluHablu

:earth_americas: HabluHablu is a CLI written in Ruby, which allows you to generate a language file (for I18n) with translations of the most useful phrases. :closed_book:

:dart: The main goal for me is to create a library of translations for the most of languages and maybe even for the most popular dialects.   
What about ancient Greek and other ancient languages? :scroll:

## Supported languages

- English
- Spanish
- German
- French
- Italian
- Japanese
- Russian
- Korean
- Portuguese
- Turkish
- Polish
- Arabic
- Hebrew
- If you want to help me out and add your language, don't hesitate!
- In progress...

### Installation

**Important!**
To be able to use the gem:
- Install [I18n gem](https://github.com/ruby-i18n/i18n)

Add this line to your application's Gemfile:

```ruby
gem 'habluhablu'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install habluhablu

### Usage

[List of symbols](https://www.w3.org/International/O-charset-lang.html)   
Generate file for a specific language using `habluhablu -l <symbol>` command.
   
Generate an example language file using `habluhablu -l example` command (it generates empty file with keywords to fill).    
    
Generate files for a more languages using `habluhablu -m <symbols>(separated by '_')` command.  
    
To generate a keyword for all languages files use: `habluhablu -k <keyword>` command.     
    
To translate a phrase/word use: `habluhablu -t hello_world -f en -o es`, where the command translates 'hello there' to spanish (-o flag).    
     
**Important!** to use translator you will have to create an account [Google API](https://rapidapi.com/googlecloud/api/google-translate1) and put api_key into api_key.txt file in config/locales directory.  
    
If you want to generate your own sample for languages files, You can do it by using `habluhablu -s <symbols>(separated by '_')` command.  
    
Generate a json file of the languages you want, use `habluhablu -j <symbols>(separated by '_')` command.   
   
`habluhablu --help`

There is also an option to add countries flag using bootstrap (for more informations go to languages/Countries_Flags.md).

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/patrickgramatowski/habluhablu_gem.

### License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
