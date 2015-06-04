 Prefix Verb   URI Pattern                               Controller#Action
        new_user_session GET    /users/sign_in(.:format)                  devise/sessions#new
            user_session POST   /users/sign_in(.:format)                  devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                 devise/sessions#destroy
           user_password POST   /users/password(.:format)                 devise/passwords#create
       new_user_password GET    /users/password/new(.:format)             devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)            devise/passwords#edit
                         PATCH  /users/password(.:format)                 devise/passwords#update
                         PUT    /users/password(.:format)                 devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)                   devise/registrations#cancel
       user_registration POST   /users(.:format)                          devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)                  devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)                     devise/registrations#edit
                         PATCH  /users(.:format)                          devise/registrations#update
                         PUT    /users(.:format)                          devise/registrations#update
                         DELETE /users(.:format)                          devise/registrations#destroy
                    root GET    /                                         default#index
              api_pieces GET    /api/pieces(.:format)                     api/pieces#index {:format=>"json"}
                         POST   /api/pieces(.:format)                     api/pieces#create {:format=>"json"}
               api_piece GET    /api/pieces/:id(.:format)                 api/pieces#show {:format=>"json"}
                         DELETE /api/pieces/:id(.:format)                 api/pieces#destroy {:format=>"json"}
            competitions GET    /competitions(.:format)                   competitions#index
                         POST   /competitions(.:format)                   competitions#create
         new_competition GET    /competitions/new(.:format)               competitions#new
        edit_competition GET    /competitions/:id/edit(.:format)          competitions#edit
             competition GET    /competitions/:id(.:format)               competitions#show
                         PATCH  /competitions/:id(.:format)               competitions#update
                         PUT    /competitions/:id(.:format)               competitions#update
                         DELETE /competitions/:id(.:format)               competitions#destroy
             user_pieces GET    /users/:user_id/pieces(.:format)          pieces#index
                         POST   /users/:user_id/pieces(.:format)          pieces#create
          new_user_piece GET    /users/:user_id/pieces/new(.:format)      pieces#new
         edit_user_piece GET    /users/:user_id/pieces/:id/edit(.:format) pieces#edit
              user_piece GET    /users/:user_id/pieces/:id(.:format)      pieces#show
                         PATCH  /users/:user_id/pieces/:id(.:format)      pieces#update
                         PUT    /users/:user_id/pieces/:id(.:format)      pieces#update
                         DELETE /users/:user_id/pieces/:id(.:format)      pieces#destroy
                   users GET    /users(.:format)                          users#index
                         POST   /users(.:format)                          users#create
                new_user GET    /users/new(.:format)                      users#new
               edit_user GET    /users/:id/edit(.:format)                 users#edit
                    user GET    /users/:id(.:format)                      users#show
                         PATCH  /users/:id(.:format)                      users#update
                         PUT    /users/:id(.:format)                      users#update
                         DELETE /users/:id(.:format)                      users#destroy
                         GET    /users/:user_id/pieces/:id(.:format)      pieces#show
                 contact GET    /contact(.:format)                        default#contact
