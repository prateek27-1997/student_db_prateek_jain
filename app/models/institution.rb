class Institution < ApplicationRecord
  has_many :students

  def self.search(name)
    Institution.where('name like :value', value: "%#{name}%").sort_by { |i| i.name }
  end
end
