class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  # ブログをお気に入りしたユーザーの情報を取得
  has_many :favorite_users, through: :favorites, source: :user
end
