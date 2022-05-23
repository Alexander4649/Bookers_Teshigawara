class BooksController < ApplicationController
  def top
    #request.url
    #@host = request.host
  end
  
  def new
    @book = Book.new
  end
  def create
    
    book = Book.new(book_params)
    book.save
    redirect_to '/books'
  end
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
    # if文が入る　⇨Book was successfully created.を出すか出さないかで
  end
  
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
