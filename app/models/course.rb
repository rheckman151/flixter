class Course < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :sections

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

#   u = Image.new
# u.image = params[:file] # Assign a file like this, or

# # like this
# File.open('somewhere') do |f|
#   u.image = f
# end

# u.save!
# u.image.url # => '/url/to/file.png'
# u.image.current_path # => 'path/to/file.png'
# u.image_identifier # => 'file.png'
end
