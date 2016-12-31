class CreateEngWordTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :eng_word_translations do |t|
      t.string :definition
      t.string :type
      t.text :sample_sentence
      t.text :sentence_translation
      t.references :eng_word, foreign_key: true

      t.timestamps
    end
  end
end
