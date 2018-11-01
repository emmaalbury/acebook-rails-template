# frozen_string_literal: true

class UsersController < ApplicationController
  def index
  end

  def change
    add_column :post, :followees_count, :integer, :default => 0
    add_column :post, :followers_count, :integer, :default => 0
    add_column :post, :likees_count, :integer, :default => 0
  end

end
