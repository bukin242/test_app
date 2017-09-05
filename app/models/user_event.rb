class UserEvent < ApplicationRecord
  belongs_to :event, polymorphic: true
  belongs_to :user
  validates_uniqueness_of :user, :scope => :event
  attr_accessor :user_tests, :user_courses
end
