class AuthorsController < ApplicationController
  before_action :set_author, except: %i[index new create]
  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:first_name, :last_name, :age, :nationality, :photo)
  end
end


# class BooksController < ApplicationController
#   before_action :set_book, except: %i[index new create] #we are setting the @book variable to the book that we passed as parameter.

#   def index
#     @book = Book.new # In order for the simple_form_for to work we need to call Book.new on a parameter.
#     @books = Book.all
#   end

#   def show
#   end

#   def new
#     @book = Book.new
#   end

#   def create
#     @book = Book.new(book_params)
#     if @book.save
#       redirect_to root_path
#     else
#       redirect_to root_path
#     end
#   end

#   def edit
#   end

#   def update
#   end

#   private

#   def set_book
#     @book = Book.find(params[:id])  
#   end

#   def book_params
#     params.require(:book).permit(:title, :year, :pages, :author_id, :value, :description, :photo)
#   end
# end
