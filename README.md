# ConcernedWithZeitwerk


concerned_with method can be used for code spliting in model files.
By creating concern such as Callbacks, Associations, Validations, etc., inside the model folder

```
foo/
    associations.rb
    callbacks.rb
    validations.rb
foo.rb
```

and include those files in the model file as shown below :

```ruby
class Foo < ActiveRecord::Base
    extend ConcernedWithZeitwerk
    concerned_with :associations, :validations, :callbacks
end
```

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add concerned_with_zeitwerk

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install concerned_with_zeitwerk

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruban-thilak/concerned_with_zeitwerk. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/concerned_with_zeitwerk/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ConcernedWithZeitwerk project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/concerned_with_zeitwerk/blob/master/CODE_OF_CONDUCT.md).
