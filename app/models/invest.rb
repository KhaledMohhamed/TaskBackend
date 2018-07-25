class Invest < ApplicationRecord
  belongs_to :user
  belongs_to :marketasset ,optional: true

end
