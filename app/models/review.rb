class Review < ActiveRecord::Base
  belongs_to :chef
  belongs_to :recipe
  validates :body, presence: true, length: {minimum: 5, maximum: 250}
  validates :chef_id, presence: true
  
  validates_uniqueness_of :chef, scope: :recipe
  
  default_scope -> { order(updated_at: :desc)}
end