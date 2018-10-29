# frozen_string_literal: true

class ChangeMessageToBeText < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :message, :text
  end
end
