class EngWordTranslation < ApplicationRecord
  belongs_to :eng_word, optional: true
  belongs_to :user, optional: true
end
