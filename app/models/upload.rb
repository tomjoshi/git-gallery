class Upload < ActiveRecord::Base
  attr_accessible :extension, :name, :image, :description, :position
  belongs_to :uploadable, polymorphic: true

  

  mount_uploader :image, ImageUploader

  validates_presence_of :description, :if => :uploadable_is_feature?
  # validates_presence_of :image
  validates_presence_of :name

  def shift_position(index)
    self.position = index.to_i + 1
  end

  def uploadable_is_feature?
    uploadable.kind_of? Feature
  end


end
