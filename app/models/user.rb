class User < ApplicationRecord
    has_secure_password

  def self.from_token_payload payload
    payload['sub']
  end

end
