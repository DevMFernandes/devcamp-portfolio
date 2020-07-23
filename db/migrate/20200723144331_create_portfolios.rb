class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :description
      t.text :img
      t.string :thumb

      t.timestamps
    end
  end
end
