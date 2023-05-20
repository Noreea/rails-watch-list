class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6, message: "can't be shorter than 6 characters" }
  validates_uniqueness_of :movie_id, scope: [:list_id]
end
