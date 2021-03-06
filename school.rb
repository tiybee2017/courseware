class School < ActiveRecord::Base

  has_many :terms
  has_many :courses, through: :terms

  default_scope { order('name') }

  validates :name, presence: true


end
