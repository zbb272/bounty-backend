class CreateBounties < ActiveRecord::Migration[5.1]
  def change
    create_table :bounties do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.string :title
      t.string :description
      t.string :status
      t.float :amount

      t.timestamps
    end
  end
end
