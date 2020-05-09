class Employee < ApplicationRecord
  has_many :subordinates, class_name: "Employee",foreign_key: "manager_id"
  belongs_to :title
  belongs_to :department
  belongs_to :location
  belongs_to :manager, class_name: "Employee", optional: true

  has_attached_file :photo, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
