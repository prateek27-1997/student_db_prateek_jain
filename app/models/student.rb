class Student < ApplicationRecord
  belongs_to :institution

  def self.search(name)
    Student.where('name like :value', value: "%#{name}%")
  end
end
