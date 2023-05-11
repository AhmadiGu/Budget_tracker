class CreateJoinTableCategoriesEntities < ActiveRecord::Migration[7.0]
  # many to many realation
  def change
    create_join_table :categories, :entities, id: false do |t|
      t.index [:category_id, :entity_id]
    end
  end
end
