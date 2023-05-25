class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
    @movies = Movie.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @movies = Movie.all
    # @bookmark.list = @list
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
