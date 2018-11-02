# frozen_string_literal: true

class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path :notice => "Your posted has been updated"
    else
      render 'edit'
    end
  end

  def change
    add_column :post, :likers_count, :integer, :default => 0
  end

  def likes
    @user = current_user
    @post = Post.find(params[:id])
    @user.like!(@post)
    redirect_to :back, notice: "Liked!"
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
