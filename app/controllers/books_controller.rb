class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new # afin d'exploiter le helper form_for
  end
  def create
    @book = Book.new title: params[:title], image: params[:image]
    if @book.save
      flash[:success] = "Le livre a bien été créé."
      redirect_to "/books"
    else
      @books = Book.all
      render "index"
    end
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
