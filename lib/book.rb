class Book < Product
  attr_accessor :price, :quantity, :title, :genre, :author

  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end
    
  def to_s
    "Книга «#{@title}», #{@genre}, автор — #{@author}, #{super}"
  end

  def update(params_upd)
    super
    @title = params_upd[:title] if params_upd[:title]
    @genre = params_upd[:genre] if params_upd[:genre]
    @author = params_upd[:author] if params_upd[:author]
  end

  def self.from_file(book_path)
    lines = File.readlines(book_path, chomp: true)
    book = Book.new( title: lines[0], author: lines[1], genre: lines[2], price: lines[3], quantity: lines[4])
  end
end
