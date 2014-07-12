class Bug < ActiveRecord::Base
  validates :title, presence: true
end
