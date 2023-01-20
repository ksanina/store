class Book < Product
  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end
    
  def to_s
    "Книга «#{@title}», #{@genre}, автор — #{@author}, #{super}"
  end
end
