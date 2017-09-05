ActiveAdmin.register UserEvent do
  index do
    column :user
    column :event
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.semantic_errors *f.object.errors.keys
      f.input :user

      if action_name == 'edit' or action_name == 'update'
        f.input :event_id, as: :select, include_hidden: false, collection: resource.event_type.constantize.all.pluck(:name, :id)
      else
        f.input :user_tests, as: :select, multiple: true, include_hidden: false, collection: UserTest.all.pluck(:name, :id)
        f.input :user_courses, as: :select, multiple: true, include_hidden: false, collection: UserCourse.all.pluck(:name, :id)
      end
    end
    f.actions
  end

  permit_params :event_id, :user_id, user_tests: [], user_courses: []

  member_action :create, method: :post do
    User.find(params[:user_event][:user_id]).add_tests(params[:user_event][:user_tests])
    User.find(params[:user_event][:user_id]).add_courses(params[:user_event][:user_courses])
    redirect_to action: 'index'
  end
end
