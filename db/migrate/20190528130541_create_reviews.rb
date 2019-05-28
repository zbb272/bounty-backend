class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :message
      t.belongs_to :user, foreign_key: true
      t.belongs_to :bounty, foreign_key: true
      t.belongs_to :project, foreign_key: true

      t.timestamps
    end
  end
end
