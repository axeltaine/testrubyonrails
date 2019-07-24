class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(5)
    @categories = Category.all
  end
  def create
    Book.create title: params[:title], category_id:params[:category_id]
    redirect_to "/books"
  end
  def show
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      flash[:success] = "Le livre a été mis a jour."
    #redirect_to "/books/#{params[:id]}"
    redirect_to "/books"
    else
    render :show
    end
  end  

  def destroy
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end
