class EngWord < ApplicationRecord
  has_many :eng_word_translations, :dependent => :destroy
  accepts_nested_attributes_for :eng_word_translations
end
