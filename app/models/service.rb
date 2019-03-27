class Service < ApplicationRecord
  has_many :appointments, dependent: :restrict_with_error
  has_many :users, dependent: :restrict_with_error
  has_many :enquiries, dependent: :restrict_with_error
end
