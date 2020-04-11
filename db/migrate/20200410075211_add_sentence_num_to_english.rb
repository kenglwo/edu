class AddSentenceNumToEnglish < ActiveRecord::Migration[6.0]
  def change
    add_column :englishes, :sentence_num, :integer
  end
end
