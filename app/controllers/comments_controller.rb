# frozen_string_literal: true

class CommentsController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "11111111"

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to posts_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update
    redirect_to posts_path(@post)
  end

  def publish
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.update(status: :published)
    redirect_to posts_path(@post)
  end

  def destroy
    @post = Post.find(params[post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to posts_path(@post)
  end

  private def comment_params
    params.require(:comment).permit(:body, :author_id)
  end
end
