class CreateMorses < ActiveRecord::Migration
  def change
    create_table :morses do |t|
      t.string :name
      t.string :message

      t.timestamps null: false
    end
  end
end
