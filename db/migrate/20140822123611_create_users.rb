class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :isim
      t.string :soyisim
      t.string :email
      t.text :biyografi

      t.timestamps
    end
  end
end
