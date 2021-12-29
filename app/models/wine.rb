class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains, dependent: :destroy
    accepts_nested_attributes_for :wine_strains, allow_destroy: :true

    has_many :wines_oenologists
    has_many :oenologists, through: :wines_oenologists
    accepts_nested_attributes_for :wines_oenologists, allow_destroy: true
end
