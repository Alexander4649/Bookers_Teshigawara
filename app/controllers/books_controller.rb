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
    redirect_to '/books/:id'
  end
  
  def show
    @book = Book.find(params[:id])
    # if文が入る　⇨Book was successfully created.を出すか出さないか
  end
  
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
