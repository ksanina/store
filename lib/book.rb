class Book < Product
  attr_writer :price, :quantity, :title, :genre, :author

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
end
