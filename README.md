# Latias::Auditor
This gem provides the ability to log audit events to database

## Usage
How to use my plugin.

```ruby
with_audit("actor", "tags", "message")
with_audit("actor", "tags") do
  "message"
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'latias-auditor', git: 'https://github.com/karn18/latias-auditor', branch: 'main'
```

And then execute:
```bash
$ bundle install
```

And generate Audit model:
```bash
$ rails generate auditor:install
$ rails db:migrate
```

Auditor has 2 modes:
- Sync: Call Active Job to persist audit
- Async: Call model directly to persist audit

You can configure mode in `app/config/intializers/auditor.rb`
 