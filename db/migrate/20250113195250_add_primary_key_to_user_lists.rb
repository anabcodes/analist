class AddPrimaryKeyToUserLists < ActiveRecord::Migration[8.0]
  def change
    # Adiciona a chave primária composta
    execute "ALTER TABLE user_lists ADD PRIMARY KEY (user_id, list_id)"
  end
end
