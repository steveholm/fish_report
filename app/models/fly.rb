class Fly < ActiveRecord::Base
  attr_accessible :location_id, :name, :picture_url
  
  belongs_to :location
  
end
