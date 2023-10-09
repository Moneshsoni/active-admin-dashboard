class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path, notice: "Your message send to the Ecommerce!"
    else
      render :new
    end
  end

  def edit 
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def show
    @blog = Blog.find(params[:id])
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :description)
  end
end
