# Sinatra app template

This is a minimal template for a simple Sinatra app (with current dependencies in 2018).

I took a lot of ideas and inspiration from the following projects, but in the end I did not like any of them enough to just use their output:
- [Hazel](https://github.com/c7/hazel)
- [Corneal](https://github.com/thebrianemory/corneal)
- [sinatra-template](https://github.com/zapnap/sinatra-template)

The dependencies are trimmed down to pretty much the minimum, that means you probably still have to take care of the following things:

- Persistence: No ORM/ODM is included by default, you can use ActiveRecord, DataMapper, Sequel, MongoID or whatever you like.
- Templating: No templating libraries are explicitly included (although Sinatra can do ERB by default), you need to add haml(it) or similar if you want to use it.

I've kept the directory structure somewhat close to Rails (because a lot of people will be familiar with that), that means:

- Files in `config/initializers` are loaded once initially at application startup.
- `config/environment` configures the necessary basics.
- The main application sources are located under `app/`.
- You can start the app with `bundle exec rackup` (or `foreman start`, but that somehow breaks pry).
- Specs are placed under `spec`, each spec should use `require_relative 'spec_helper'`.
  - You can start the specs normally with `bundle exec rspec`
- There's a `rake console` target to give you a console with access to the whole project.

I've also included [dotenv](https://github.com/bkeepers/dotenv) for environment configuration.

In the end this is all just based on my personal preference, so don't expect this to be the perfect template for your own use case.