class BooksController < ApplicationController
  def index
    @livres = Book.all;
    @categories = Category.all
  end

  def create
    @livre = params[:title];
    @category = params[:categories];
    Book.create title: @livre, category_id: @category;

    redirect_to '/';
  end

  def show
    @categories = Category.all;
    @id = params[:id];
    @livre = Book.find(@id);
  end

  def update
    @id = params[:id];
    @title = params[:title];
    @category = params[:categories];
    Book.find(@id).update title: @title, category_id: @category;

    redirect_to "/"
  end

  def delete
    @id = params[:id]
    @livre = Book.find(@id);
    @livre.destroy;

    redirect_to "/books"
  end
end
