class BooksController < ApplicationController
  def top
    #request.url
    #@host = request.host
  end
  
  def index
    @book = Book.new
    @books = Book.all
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books'
    if @book.save
    redirect_to '/books'
    else
    render :new
    end
    #book.create(content:params[:content])
  end
  
  def show
    @book = Book.find(params[:id])
    # if文が入る　⇨Book was successfully created.を出すか出さないかで
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to '/books'
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
    
  
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
