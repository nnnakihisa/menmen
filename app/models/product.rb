class Product < ApplicationRecord
  # include ActiveModel::Conversion

  def self.search(search)
    return Product.all unless search
    Product.where('name LIKE(?)', "%#{search}%")
  end
  # def persisted? ; false ; end
end
