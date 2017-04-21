class Script < ActiveRecord::Base

  validates :title, presence: true
  validates :procedure, presence: true
  
 searchable do
    text :title, :boost => 2
    text :procedure, :boost => 2
 end
end
