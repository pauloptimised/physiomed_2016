# == Schema Information
#
# Table name: testimonials
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  content       :text             not null
#  author        :string           not null
#  role          :string
#  case_study_id :integer
#  display       :boolean          default(TRUE), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Testimonial < ActiveRecord::Base
  belongs_to :case_study

  scope :search, ->(keywords) { where("title ILIKE ?", "%#{ keywords }%") if keywords.present? }
  scope :displayed, ->{ where(display: true) }
  scope :for_category, ->(category) { joins(:categories_testimonials).where(categories_testimonials: { category_id: category }) }

  has_many :categories_testimonials, class_name: "Categories::Testimonial"
  has_many :categories, through: :categories_testimonials
  has_many :pages_testimonials, class_name: 'Pages::Testimonial'
  has_many :pages, through: :pages_testimonials

  validates :content, presence: true
  validates :author, presence: true
  validates :title, presence: true

end
