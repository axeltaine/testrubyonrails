class BooksController < ApplicationController
  def index
    @les_livres = Book.all
  end
  def create
    Book.create title: params[:title]
    redirect_to "/books"
  end
end
