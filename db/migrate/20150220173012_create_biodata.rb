class CreateBiodata < ActiveRecord::Migration
  def change
    create_table :biodata do |t|
      t.string :name
      t.float :age
      t.string :location
      t.string :city

      t.timestamps
    end
  end
end
