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
    #@book.save
    #redirect_to '/books'
    if @book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book)
    else
    #@book = Book.all.order(created_at: :desc)
    #@book = Book.find_by(params[:id])
    @books = Book.all
    render :index
    
    
    end
    #book.create(content:params[:content])
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    flash[:notice] = "Book was successfully updated."
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end
  
  def destroy
    flash[:notice] = "Book was successfully destroyed."
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
    
  
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
