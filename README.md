# Sinatra app template

This is a slim template for a simple Sinatra app.

I took a lot of ideas and inspiration from the following projects, but in the end I did not like any of them enough to just use their output:
- [Hazel](https://github.com/c7/hazel)
- [Corneal](https://github.com/thebrianemory/corneal)
- [sinatra-template](https://github.com/zapnap/sinatra-template)

The dependencies are trimmed down to pretty much the minimum, that means you probably still have to take care of the following things:

- Persistence: No ORM/ODM is included by default, you can use ActiveRecord, DataMapper, Sequel, MongoID or whatever you like.
- Templating: No templating libraries are explicitly included (although Sinatra can do ERB by default), you need to add haml(it) if you want to use it.

I've kept the structure more or less close to Rails (because a lot of people will be familiar with that), that means:

- Files in `config/initializers` are loaded once initially at application startup.
- `config/environment` configures the necessary basics.
- The main application sources are located under `app/`.
- You can start the app with `bundle exec rackup` (or `foreman start`, but that somehow breaks pry).
- Specs are placed under `spec`, each spec should use `require_relative 'spec_helper'`.
  - You can start the specs normally with `bundle exec rspec`
