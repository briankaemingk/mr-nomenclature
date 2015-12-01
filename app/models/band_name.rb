class Band_Name < ActiveRecord::Base

  validates :title, presence: true, length: {minimum:1}

end