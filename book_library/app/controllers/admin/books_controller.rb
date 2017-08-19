class Admin::BooksController < ApplicationController

  # index action
  def index
    @book = Book.all
  end

  def show
  end

  def book_pdf
    @book = Book.find(params[:id])
    send_file @book.pdf_path,
              filename: @book.title,
              type: 'application/pdf',
              disposition: 'inline'
  end
end
