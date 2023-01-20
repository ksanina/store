class Movie < Product
  attr_writer :price, :quantity, :title, :year, :director

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм «#{@title}», #{@year}, реж. #{@director}, #{super}"
  end

  def update(params_upd)
    super
    @title = params_upd[:title] if params_upd[:title]
    @year = params_upd[:year] if params_upd[:year]
    @director = params_upd[:director] if params_upd[:director]
  end
end
