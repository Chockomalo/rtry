# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  status     :integer          default("default")
#  ip         :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShoppingCart < ApplicationRecord
  has_many :products, through: :in_shopping_carts
  has_many :in_shopping_carts
  #status = 0 -> no pagado, status = 1 -> pagado
  enum status:{payed: 1, default: 0}
  def total
    products.sum(:pricing)
  end
end
