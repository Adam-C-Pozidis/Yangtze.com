class BooksController < ApplicationController
  before_action :set_book, except: %i[index new create] #we are setting the @book variable to the book that we passed as parameter.
  before_action :set_shopping_cart
  
  def index
    @cart_item = CartItem.new
    @book = Book.new # In order for the simple_form_for to work we need to call Book.new on a parameter.
    @books = Book.all
  end

  def show
    @author = @book.author
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  private

  def set_shopping_cart
    @shopping_cart = current_shopping_cart
  end

  def set_book
    @book = Book.find(params[:id])  
  end

  def book_params
    params.require(:book).permit(:title, :year, :pages, :author_id, :value, :description, :photo)
  end
end
