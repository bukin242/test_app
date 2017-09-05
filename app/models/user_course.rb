class UserCourse < ApplicationRecord
  has_many :user_events, as: :event
  default_scope { order('id desc') }

  def to_s
    name
  end
end
