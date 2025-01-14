class List < ApplicationRecord
    has_many :items, dependent: :destroy
    # Relacionamento muitos-para-muitos com users através da tabela intermediária UserList
    has_many :user_lists, dependent: :destroy
    has_many :users, through: :user_lists
end  