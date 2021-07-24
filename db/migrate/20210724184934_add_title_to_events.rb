class AddTitleToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string, after: :id
  end
end
