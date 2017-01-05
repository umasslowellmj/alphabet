class AddUserToEngWordTranslations < ActiveRecord::Migration[5.0]
  def change
    add_reference :eng_word_translations, :user, foreign_key: true
  end
end
