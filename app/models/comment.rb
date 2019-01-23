class Comment < ApplicationRecord
<<<<<<< HEAD
=======
  belongs_to :micropost
  validates :micropost_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
>>>>>>> production/master
end
