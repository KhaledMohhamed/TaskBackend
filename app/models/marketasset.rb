class Marketasset < ApplicationRecord
  has_many :invests
  has_many :users, through: :invests
end
