# README

This repo contains the code that accompanies the tutorial originally published [here](https://www.colby.so/posts/pagination-and-infinite-scrolling-with-hotwire).

The tutorial, and this repository, demonstrate methods for implementing pagination and infinite scroll in a Rails 7 application powered by Turbo Frames, Turbo Streams, and Stimulus. Review the commit history in the `main` branch to see the three different Turbo-powered approaches that we implement in the tutorial.

To run this repository locally, clone it and then:
```
bundle install
rails db:create db:migrate
bin/dev
```

And then navigate to localhost:3000/widgets. You may wish to create test widget data from the Rails console:
```ruby
50.times do |n|
  Widget.create(name: "Widget ##{n}")
end
```
