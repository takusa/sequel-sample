
get '/' do
  @posts = Post.all
  erb :index
end

get '/test_data' do
  Post.create_test_data
  redirect '/'
end
