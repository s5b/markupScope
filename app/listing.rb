require 'sinatra'

get '/directory-listing/:name' do |name|
  kind = { acme: 'business', senate: 'government', smith: 'residential'}[name.to_sym]
  haml :listing, :format => :html5, :locals => { kind: kind, who: name }
end