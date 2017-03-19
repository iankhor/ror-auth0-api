class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :username
      t.string :email
      t.string :address
      t.string :phone
      t.string :profession
      t.string :abn

      t.timestamps
    end
  end
end
