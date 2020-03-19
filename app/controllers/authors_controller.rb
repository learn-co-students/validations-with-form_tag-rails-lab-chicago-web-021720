class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
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

  def edit
  end 

  def update
  end 

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end



# Basic Routes & Controllers
# Define the "valid path" for the create and update controller 
# actions.
# Define the "invalid path" for the create and update 
# controller actions.

# Forms

# Create forms with form_tag for both models' new and edit 
# actions.

# Prefill already-submitted forms with the invalid data when 
# re-rendering.

# Display a list of errors at the top of forms when an invalid 
# action is attempted. They should be contained in an element 
# with id error_explanation, and each error should have its own
#  <li>.

# Conditionally wrap each field in a .field_with_errors div if 
# it has errors.