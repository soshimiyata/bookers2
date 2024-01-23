class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def show
    @book = book.find(params[:id])
  end

  def edit
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
  
end
