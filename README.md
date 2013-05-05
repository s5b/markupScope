Markup Scope for Testing and Styling
===========

An exploration of identifying elements with 'id' for styling and separately for testing.

This is a small project to test the effects of styling elements with an 'id' in a broader context. It is aimed at a better understanding of the specificity rules associated with CSS, and the targeting of elements for testing purposes.

This idea come up from a discussion about using 'id' as a mechanism for locating elements within a document for testing, yet wanting to style those elements differently depending on the presentation context within which the element is used.

That is, the elements have a semantic meaning based on the 'id' of the element, yet the presentation of the element varies depending on the context within which the element is used. In this example, the page is providing a listing of a named entity, so all tests want to identify the name of the entity. But the styling is different for each entity based on its _kind_.

This idea is based on the approach Modernizr (http://modernizr.com) uses for coding browser capability through the addition of element classes to the 'html' element of the page.

Approach
--------

The approach has been to use a specific 'id' to identify the _name_ element in the markup, which can be used for testing purposes. Then a separate 'id' is applied to the 'body' element of the page to contain the _kind_. This arrangement then allows for specific targeting of the styling for the
name containing element using appropriate CSS styling.

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