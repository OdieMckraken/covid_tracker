# CovidStatusByCountry

This is a CLI program for tracking live information about the COVID-19 infection. The user is able to search by county, highest number of confirmed cases, and highest number of new confirmed cases. The user can also view all countries with no new confirmed cases, and view a country selected at random.  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'covid_status_by_country'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install covid_status_by_country

## Usage

The program stats off with a warning from the CDC. To continue to the seach feature the user must press 'enter'. This will display up to date information on the global infection rates, and ask the user to input a country. This feature is not case sensitive and will return a country even if the entire name of the country is not entered ("united states" will return the information for "United States of America"). After returnig the information for the requested country, the user will be presented with a menu. from here the user can find the country with the highest number of confirmed cases, the highest number of new confirmed cases, view all countries with no new confirmed cases, view a country selected at random, or exit the program. The menu is navigated by using the up/down arrow keys and enter. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/covid_status_by_country. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/covid_status_by_country/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CovidStatusByCountry project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/covid_status_by_country/blob/master/CODE_OF_CONDUCT.md).
