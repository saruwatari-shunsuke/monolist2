class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  validates :q, allow_blank: true, length: { minimum: 2, maximum: 20 }
end