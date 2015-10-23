class Tag < ActiveRecord::Base
  has_many :question_tags, dependent: :destroy
  has_many :questions, through: :question_tags
  validates_presence_of :description
end
