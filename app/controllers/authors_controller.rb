class AuthorsController < ApplicationController
  def show
    find_author
  end

  def edit
    find_author
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def update
    find_author
    @author.update_attributes(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def find_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
