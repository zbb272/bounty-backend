class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :description
      t.string :email
      t.string :password_digest
      t.string :github_url

      t.timestamps
    end
  end
end
