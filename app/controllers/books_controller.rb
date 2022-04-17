class BooksController < ApplicationController
    
    def index
    @books = Book.all
    @book = Book.new
    @user = current_user
    end
    
    def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path(@book.id)
    else
    @books = Book.all
    render "index"
    end
    end
    
    def update
    @book = Book.find(params[:id])
    redirect_to book_path(@book.id)
    end

    def edit
    @book = Book.find(params[:id])
    end
    
    def show
    @book = Book.new
    @bookdetail = Book.find(params[:id])
    @user = @bookdetail.user
    end
    
    def destroy
    # I'd like to delete @bookdetail so receive the id here
    @bookdetail = Book.find(params[:id])
    @bookdetail.destroy
    redirect_to books_path
    end

    private

    def book_params
      params.require(:book).permit(:title, :body)
    end

end
