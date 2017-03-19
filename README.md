
DRAFT
======

Steps
-----
0. `cp .env.example .env`
0.1. env variables
0.2. turn on postgres server - [postgresapp](www.postgresapp.com)
0.3. populate env variables with auth0 items
1. `rails new ror-auth0-api --api --database=postgresql`  
2. `rails db:create && rails db:migrate`
3. add `gem 'bcrypt', '~> 3.1.7'`
4. run `bundle install`
5. 
```
class User < ApplicationRecord
  has_secure_password
end
```  
6. Add `gem 'knock'`  
7. run `rails generate knock:install` , generates knock initializers
8. 
```
# app/controllers/application_controller.rb

class ApplicationController < ActionController::API  
  include Knock::Authenticable
  before_action :authenticate_user
end 
```  

9. 
```
class User < ApplicationRecord
    has_secure_password

  def self.from_token_payload payload
    # Returns a valid user, `nil` or raise
    # !!!
    # This is only to make the example test cases pass, you should use something line self.find payload["sub"]
    payload['sub']
  end

end
```

10. add `gem 'active_model_serializers', '~> 0.10.0'` 
11. run `rails g scaffold post title desc:string` (also creates serializer)
12. remove or update. Auth0 client secret by default is non-base64 encoded
```
# config/initializers/knock.rb

# config.token_secret_signature_key = -> { JWT.base64url_decode Rails.application.secrets.auth0_client_secret }
  config.token_secret_signature_key = -> { Rails.application.secrets.auth0_client_secret }
```

13. add unauth access message
```
    def unauthorized_entity(entity_name)
        render json: ["Unauthorized"], status: :unauthorized
    end
```  
14. heroku setup , add env in heroku etc


------------------

to update / to be added
--------
1. no record found json response


References
----------
1. [https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api](https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api)
2. [http://www.thegreatcodeadventure.com/jwt-authentication-with-rails-ember-part-i-rails-knock/])http://www.thegreatcodeadventure.com/jwt-authentication-with-rails-ember-part-i-rails-knock/)
3. [http://www.thegreatcodeadventure.com/building-a-super-simple-rails-api-json-api-edition-2/](http://www.thegreatcodeadventure.com/building-a-super-simple-rails-api-json-api-edition-2/)
