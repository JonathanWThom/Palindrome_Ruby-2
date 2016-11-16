require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/results') do
  @word = params.fetch('word')
  @result = params.fetch('word').palindrome()
  erb(:results)
end
