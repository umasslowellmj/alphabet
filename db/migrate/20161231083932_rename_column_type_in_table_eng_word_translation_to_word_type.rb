class RenameColumnTypeInTableEngWordTranslationToWordType < ActiveRecord::Migration[5.0]
  def change
    rename_column :eng_word_translations, :type, :word_type
  end
end
