class Solution < ActiveRecord::Base

  validates :solver, presence: true
  validates :description, presence: true
  validates :solution, presence: true

 searchable do
    text :description, :boost => 2
    text :error, :boost => 2
    text :solution, :boost => 2
    text :Problemno, :boost => 2
    text :cause, :boost => 2
    text :solver, :boost => 2
 end

 def text_search(keyword)
   find(:all, :conditions=>["description like ?", "%#{keyword}%"])
 end
end
