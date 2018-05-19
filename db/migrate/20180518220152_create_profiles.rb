class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.date :birthdate
      t.string :enterprise
      t.string :github
      t.string :linkedin
      t.string :twitter
      t.text :bio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
