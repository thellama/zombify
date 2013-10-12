class CreateNounPhrases < ActiveRecord::Migration
  def change
    create_table :noun_phrases do |t|
      t.string :noun_phrase

      t.timestamps
    end
  end
end
