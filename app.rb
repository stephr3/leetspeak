require('sinatra')
require('sinatra/reloader')
require('./lib/leetspeak')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:form)
end

get('/result') do
  @sentence = params.fetch('sentence').leetspeak
  erb(:result)
end
