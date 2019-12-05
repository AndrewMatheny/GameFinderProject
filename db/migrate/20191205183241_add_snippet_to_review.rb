class AddSnippetToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :snippet, :string
  end
end
