class Dog < ApplicationRecord
    attribute :name, :string
    attribute :motto, :string
    attribute :size, :string

    validates :name, presence: true
end

class Owner < ApplicationRecord
    has_many :dogs
end
