class RenameColumnEnglish < ActiveRecord::Migration[6.0]
  def change
    rename_column :englishes, :sentences, :sentence
  end
end
