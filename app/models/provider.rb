class Provider < ActiveRecord::Base
  has_many :streaming_servers, dependent: :destroy
end
