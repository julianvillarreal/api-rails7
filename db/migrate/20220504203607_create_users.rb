class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.bigint :phone
      t.integer :age
      t.string :nickname

      t.timestamps
    end
  end
end
