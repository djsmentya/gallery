class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :full_name
      t.date :birthday
      t.string :gender
      t.string :relation

      t.timestamps
    end
  end
end
