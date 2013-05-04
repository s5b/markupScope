Markup Scope for Testing and Styling
===========

Scoping elements with id for styling and testing.

This is a small project to test the effects of styling elements with an id in a broader context.

This idea come up from a discussion about using id as a mechanism for locating elements within a document for testing, yet wanting to style those elements differently depending on the context.

That is, the elements have a semantic meaning based on the id of the element, yet the presentation of the element varies depending on the context within which the element is used. In this example, the page is providing listing of a named entity, so all tests want to identify the name of the entity. But the styling is different for each entity based on its type.

This idea is based on the approach Modernizr (http://modernizr.com)

Implementation
--------------

The example is implemented as a Sinatra application. It is using Capybara (with PhantomJS, via poltergeist)
 in RSpec for the testing.

To run it you'll need Ruby (1.9 or greater) and something like the following, at least:

    gem install sinatra
    gem install rspec
    gem install capybara

    sudo brew install poltergeist
    gem install poltergeist

Tests
-----

Just run the rspec command from the top directory.


Application
-----------

Do the following:

    cd ./app
    ruby listing.rb

Then in your browser, try the following URL:

- Business: [http://localhost:4567/directory-listing/acme](http://localhost:4567/directory-listing/acme)
- Government: [http://localhost:4567/directory-listing/senate](http://localhost:4567/directory-listing/senate)
- Residential: [http://localhost:4567/directory-listing/smith](http://localhost:4567/directory-listing/smith)
- Other: [http://localhost:4567/directory-listing/junk](http://localhost:4567/directory-listing/junk)