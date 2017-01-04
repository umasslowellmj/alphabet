class EngWordTranslation < ApplicationRecord
  belongs_to :eng_word, optional: true
end
