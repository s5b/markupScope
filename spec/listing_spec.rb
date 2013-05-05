require_relative '../app/listing.rb'
require 'spec_helper.rb'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'sinatra'

Capybara.app = Sinatra::Application
Capybara.javascript_driver = :poltergeist
Capybara.always_include_port=true

feature 'Listing' do

  [
      {kind: 'business', name: 'acme'},
      {kind: 'government', name: 'senate'},
      {kind: 'residential', name: 'smith'},
      {kind: '', name: 'doNotCare'}
  ].map do |test_case|

    it 'should include the name of the listing as a heading' do
      visit "/directory-listing/#{test_case[:name]}"

      find('h1#name').should have_content(test_case[:name].upcase)
    end

    it 'should include the type of the listing in the content' do
      visit "/directory-listing/#{test_case[:name]}"

      page.should have_content("This is a #{test_case[:kind]} listing.")
    end

  end

end
