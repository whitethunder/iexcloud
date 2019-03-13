# IEX Cloud

Wrapper for the IEX Cloud API. https://iexcloud.io/docs/api

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iexcloud'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iexcloud

## Usage

IEX cloud uses a publishable key and secret key for authentication. These values
are loaded into the gem via the PUBLISHABLE_KEY and SECRET_KEY environment variables.
In development, you can load these with dotenv by setting the values in `.env` and
running:

```ruby
Dotenv.load(".env")
```

Make sure you never commit your secret key to any repo!

Configure the version of the API you're using and endpoint with:

```ruby
IEXCloud.configure do |config|
  config.api_version = "beta" #required
  config.endpoint = "https://sandbox.iexapis.com/" #required
  config.proxy = "http://proxy" #optional
end
```

## Documentation



## Development

After checking out the repo, copy `.env` to `.env.test` and fill in the environment
variables. Run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/whitethunder/iexcloud.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
