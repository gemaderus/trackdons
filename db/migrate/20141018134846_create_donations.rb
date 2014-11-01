class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.decimal :quantity
      t.string :currency
      t.date :date
      t.text :comment
      t.string :tags
      t.references :project, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
