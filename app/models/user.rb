class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_events

  def to_s
    'User( %s )' % email
  end

  def add_tests test_ids
    if test_ids.present?
      UserTest.where(id: test_ids).each do |user_test|
        user_events.create event: user_test
      end
    end
  end

  def add_courses courses_ids
    if courses_ids.present?
      UserCourse.where(id: courses_ids).each do |user_course|
        user_events.create event: user_course
      end
    end
  end

  def tests
    user_events.where(event_type: 'UserTest').map(&:event)
  end

  def courses
    user_events.where(event_type: 'UserCourse').map(&:event)
  end
end
