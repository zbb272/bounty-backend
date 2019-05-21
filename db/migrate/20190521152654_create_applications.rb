class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :message
      t.belongs_to :user, foreign_key: true
      t.belongs_to :bounty, foreign_key: true

      t.timestamps
    end
  end
end
