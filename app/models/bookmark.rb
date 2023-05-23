class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :lists
end
