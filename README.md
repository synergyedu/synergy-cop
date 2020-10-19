# Synergy::Cop

This repository hosts SynergySoft configurations for gem for rubocop.

The configurations provided here are intended to apply to all of the SynergySoft repositories.

Your application might have special rules of its own, which you can freely override in your local configuration. But if you think a rule is of general relevance, then it should probably live here.

## Installation

Include this gem in your Gemfile:

```ruby
group :development, :test do
  gem 'synergy-cop'
end
```

Or install via cli command:

```
gem install synergy-cop
```

Let your `.rubocop.yml` inherit from this gem, add following rows:

```yml
inherit_gem:
  synergy-cop:
    - default.yml
```

## Usage

If you've installed the gem including it to Gemfile, then you have to use Bundler in order to find the dependency’s installation path at runtime:

```
bundle exec rubocop <options...>
```

If you've installed the gem via cli, you can use rubocop without `bundle exec`. But this is not recommended way, because you can miss updates easily.

## Customizing rules

The snippet above is everything needed to use this configuration as default.
Starting from there it is possible to make local changes to the configuration.

Take this example `.rubocop.yml`:

```yml
inherit_gem:
  synergy-cop:
    - default.yml

# We still have unfixed offenses in some files
inherit_from: .rubocop_todo.yml

# This project agreed on a different line length than the rest of the company
Metrics/LineLength:
  Max: 120
```
