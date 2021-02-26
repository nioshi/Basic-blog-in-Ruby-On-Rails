class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  validates :commenter, presence: true, length: {minimum:3, maximum:50}
  validates :body, presence: true, length: {minimum: 10}
end
