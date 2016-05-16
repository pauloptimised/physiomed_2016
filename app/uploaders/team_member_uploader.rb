class TeamMemberUploader < Optimadmin::ImageUploader
  version :author do
    process resize_to_fill: [50, 50]
  end

  version :index do
    process resize_to_fill: [300, 300]
  end

  version :show do
    process resize_to_fill: [300, 300]
  end
end
