ActiveAdmin.register Page do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :slug, :content, :meta_title, :meta_description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :slug, :content, :meta_title, :meta_description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

    permit_params :title, :slug, :content, :meta_title, :meta_description

  form do |f|
    f.inputs 'Page Details' do
      f.input :title
      f.input :slug
      f.input :content, as: :quill_editor
      f.input :meta_title
      f.input :meta_description
    end
    f.actions
  end

  index do
    selectable_column
    column :title
    column :slug
    column :created_at
    actions
  end
  
end
