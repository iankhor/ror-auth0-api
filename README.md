
DRAFT
======

Steps
-----
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
6. 



References
----------
1. [https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api](https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api)
2. [http://www.thegreatcodeadventure.com/jwt-authentication-with-rails-ember-part-i-rails-knock/])http://www.thegreatcodeadventure.com/jwt-authentication-with-rails-ember-part-i-rails-knock/)

