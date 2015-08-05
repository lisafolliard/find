require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/replacement') do
  @old = params.fetch('sentence')
  @new = params.fetch('sentence').find_and_replace('word','replacement')
  erb(:replacement)
end
