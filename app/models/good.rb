class Good < ApplicationRecord
  belongs_to :drama
  belongs_to :user

  validates_uniqueness_of :drama_id, scope: :user_id

end
