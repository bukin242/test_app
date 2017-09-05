ActiveAdmin.register UserTest do
  index download_links: false do
    column :id
    column :name
    column :created_at
    column :updated_at
    actions
  end

  permit_params :name, :description
end
