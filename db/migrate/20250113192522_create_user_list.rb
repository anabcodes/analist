class CreateUserList < ActiveRecord::Migration[8.0]
  def change
    create_table :user_lists, id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
    end
  end
end
