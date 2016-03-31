# Bunto::Compose

> Streamline your writing in Bunto with some commands.

[![Build Status](https://travis-ci.org/bunto/bunto-compose.svg?branch=master)](https://travis-ci.org/bunto/bunto-compose)

## Installation

Add this line to your application's Gemfile:

    gem 'bunto-compose', group: [:bunto_plugins]

And then execute:

    $ bundle

## Usage

After you have installed (see above), run `bundle exec bunto help` and you should see:

Listed in help you will see new commands available to you:

```sh
  draft      # Creates a new draft post with the given NAME
  post       # Creates a new post with the given NAME
  publish    # Moves a draft into the _posts directory and sets the date
  unpublish  # Moves a post back into the _drafts directory
  page       # Creates a new page with the given NAME
```

Create your new page using:

    $ bundle exec bunto page "My New Page"

Create your new post using:

    $ bundle exec bunto post "My New Post"

Create your new draft using:

    $ bundle exec bunto draft "My new draft"

Publish your draft using:

    $ bundle exec bunto publish _drafts/my-new-draft.md
    # or specify a specific date on which to publish it
    $ bundle exec bunto publish _drafts/my-new-draft.md --date 2014-01-24

Unpublish your post using:

    $ bundle exec bunto unpublish _posts/2014-01-24-my-new-draft.md

## Contributing

1. Fork it ( http://github.com/bunto/bunto-compose/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Run the specs (`script/cibuild`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
