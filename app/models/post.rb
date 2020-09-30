class Post < ApplicationRecord
  has_many :comments
  has_and_belongs_to_many :tags

  scope :published, -> {where(published: true)}
  scope :ordered, -> {order("created_at desc")}
  scope :created_before, -> (time) {where("created_at < ?", time)}

end
