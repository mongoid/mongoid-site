# Documentation

These are the source files that power mongoid.org. It is a
[middleman](http://middlemanapp.com) powered static page.

# Contributing

Please help Mongoid flesh out its documentation. We'll merge in any reasonable
extensions to our website docs, and give credit for your help!

# How to run the site locally

Clone this repo and run `bundle install`. Then run
`bundle exec middleman` to start the server at http://localhost:4567

# How to deploy a new version of mongoid.org

Clone the 'mongoid.github.io' submodule:
`git submodule init; git submodule update`
Then run `bundle exec rake`, to build the html version of the site.
Commit and push the submodule:
`cd build; git commit -am'Update website'; git push origin master`

# Notes

All pages are written in haml, and for consistency must stay that way.
