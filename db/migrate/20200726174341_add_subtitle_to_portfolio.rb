class AddSubtitleToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :subtitle, :string
  end
end
