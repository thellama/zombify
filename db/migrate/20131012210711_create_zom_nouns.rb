class CreateZomNouns < ActiveRecord::Migration
  def change
    create_table :zom_nouns do |t|
      t.string :zom_noun

      t.timestamps
    end
  end
end
