# == Schema Information
#
# Table name: links
#
#  id              :integer          not null, primary key
#  product_id      :integer
#  expiration_date :datetime
#  downloads       :integer
#  downloads_limit :integer
#  custom_id       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :link do
    association :product, factory: :product
    expiration_date "2016-08-23 21:04:16"
    downloads 1
    downloads_limit 1
    custom_id nil
  end
end
