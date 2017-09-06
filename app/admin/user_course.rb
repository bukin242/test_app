ActiveAdmin.register UserCourse do
  index download_links: false do
    column :id
    column :name
    column :created_at
    column :updated_at
    actions
  end

  form multipart: true do |f|
     f.inputs "Course detail" do
       f.input :name
       f.input :description
     end
     f.actions
   end

  permit_params :name, :description
end
