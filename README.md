# Sinatra app template

This is my template for a simple [Sinatra](http://sinatrarb.com/intro.html) app (with current dependency versions as of 2020-06).

I took a lot of ideas and inspiration from the following projects, but in the end I did not like any of them enough to just use their output:
- [Hazel](https://github.com/c7/hazel)
- [Corneal](https://github.com/thebrianemory/corneal)
- [sinatra-template](https://github.com/zapnap/sinatra-template)

The dependencies are trimmed down pretty much, that means you probably still have to take care of the following things:

- Persistence: No ORM/ODM is included by default, you can use ActiveRecord, DataMapper, Sequel, MongoID or whatever you like.
- Templating:
  - Only ERB (and JSON) is supported by default, you need to add haml(it) or similar if you want to use other template languages.
  - We use [Erubi](https://github.com/jeremyevans/erubi) for ERB rendering with `escape_html: true`, which means `<%= foo %>` will escape HTML by default. Use `<%== foo %>` if you know that `foo` produces safe HTML.

I've kept the directory structure somewhat close to Rails (because a lot of people will be familiar with that), that means:

- Files in `config/initializers` are loaded once initially at application startup.
- `config/environment` configures the necessary basics.
- The main application sources are located under `app/`.
  - Views are loaded from `app/views`.
- You can start the app with `bundle exec rackup`, `bin/rackup` or `foreman start` (but the latter somehow breaks pry).
- Specs are placed under `spec`, each spec should use `require_relative 'spec_helper'`.
  - You can start the specs normally with `bundle exec rspec` or `bin/rspec`.
- There's a `rake console` target to give you a console with access to the whole project.
- Files in `public` are served directly under `/`.

I've also included:
- [dotenv](https://github.com/bkeepers/dotenv) for environment configuration
- [Sinatra::Reloader](http://sinatrarb.com/contrib/reloader) for live reloading
- [Sinatra::Json](http://sinatrarb.com/contrib/json) for JSON output
- A [Dockerfile](Dockerfile) to make deploying this easy
- [MVP.css](https://andybrewer.github.io/mvp/) for some simple styling

In the end this is all just based on my personal preference, so don't expect this to be the perfect template for your own use case.
