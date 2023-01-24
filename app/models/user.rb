class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
             
  has_many :dramas, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :gooded_dramas, through: :goods, source: :drama

  def already_gooded?(drama)
    self.goods.exists?(drama_id: drama.id)
  end

  validates :name, presence: true #追記
  validates :profile, length: { maximum: 200 }
  
end