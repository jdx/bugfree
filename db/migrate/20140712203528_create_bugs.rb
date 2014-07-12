class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :body
      t.boolean :resolved

      t.timestamps
    end
  end
end
