class Artical < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5, maximum:20}
    validates :description, presence: true, length: {minimum: 15, maximum:200}
end
