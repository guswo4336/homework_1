Rails.application.routes.draw do
# Resource : posts

# Method를 이용해서 이 Resource를 조작하는 방법을 아래에 기술

# 1.우리가 쓴 글들을 다 볼수있는 페이지
get '/posts' => 'posts#index'

# 2.우리가 새 글을 쓰는 페이지
get '/posts/new' => 'posts#new'

# 3.새 글을 받는 페이지
post '/posts' => 'posts#create'

# 4. 특정 글을 보는 페이지
get '/posts/:id' => 'posts#show', as: "post"

# 5.글을 수정하는 페이지
get '/posts/:id/edit' => 'posts#edit', as: "edit_post"

# 6. 글을 수정완료하는 페이지(Update를 해주는 페이지)
put '/posts/:id' => 'posts#update'
patch '/posts/:id' => 'posts#update'

# 7. 특정 글을 삭제하는 페이지
delete '/posts/:id' => 'posts#destroy'

end
