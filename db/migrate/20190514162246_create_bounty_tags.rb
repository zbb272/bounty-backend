class CreateBountyTags < ActiveRecord::Migration[5.1]
  def change
    create_table :bounty_tags do |t|
      t.belongs_to :bounty, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
