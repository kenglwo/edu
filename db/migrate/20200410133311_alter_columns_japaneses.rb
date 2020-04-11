class AlterColumnsJapaneses < ActiveRecord::Migration[6.0]
  def change
    remove_column :japaneses, :theme
    add_column :japaneses, :sentence_num, :integer
  end
end
