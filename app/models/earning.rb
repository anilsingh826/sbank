class Earning < ActiveRecord::Base
  include Comman 
  belongs_to :user
end
