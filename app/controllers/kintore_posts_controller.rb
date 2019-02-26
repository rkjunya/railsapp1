class KintorePostsController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = KintorePost.all.order(created_at: :desc)
  end

  def show
    @post = KintorePost.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = KintorePost.new(content: params[:content], detail: params[:detail])
    @post.save
    redirect_to("/kintore_posts/index")
  end

  def edit
    @post = KintorePost.find_by(id: params[:id])
  end

  def update
    @post = KintorePost.find_by(id: params[:id])
    @post.content = params[:content]
    @post.detail = params[:detail]
    @post.save
    redirect_to("/kintore_posts/index")
  end

  def destroy
    @post = KintorePost.find_by(id: params[:id])
    @post.destroy
    redirect_to("/kintore_posts/index")
  end

end
