class AlterColumnsEnglishes < ActiveRecord::Migration[6.0]
  def change
    remove_column :englishes, :theme
    add_column :englishes, :subject, :text
    add_column :englishes, :verb, :text
  end
end
