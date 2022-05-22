class BooksController < ApplicationController
  def top
    #request.url
    #@host = request.host
  end
  
  def new
    @book = Book.new
  end
end
