# Testing Testing

[![Circle CI](https://circleci.com/gh/micahbrich/testing.svg?style=svg)](https://circleci.com/gh/micahbrich/testing)

This is a simple, basic Rails application, to demonstrate testing. It uses PostgreSQL, and Rails 4.1.7, as well as RSpec & FactoryGirl. Normally there'd be plenty to talk about what it does and why you built it, but this is really just an example.

## Getting It Up & Running

After cloning, do a normal ``bundle install`` to get all them perty gems.

You'll need to have PostgreSQL running, and then you can just:

```bash
rake db:create
rake db:schema:load
```

And you should be set up. Good to go.

## Test It

Finally, to make sure all our tests so far are passing:

```bash
bundle exec rspec
```

If everything's green, you're ready to go. If you intend to submit a pull request, first _make a fork_, then write all your code in a new feature branch, and when all the tests are passing you can submit a pull request.
