class Cd < Product
  attr_accessor :title, :performer, :genre, :year

  def initialize(params)
    super
    @title = params[:title]
    @performer = params[:performer]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом #{@performer} — «#{@title}», #{@genre}, #{@year}, #{super}"
  end

  def update(params_upd)
    super
    @title = params_upd[:title] if params_upd[:title]
    @performer = params_upd[:performer] if params_upd[:performer]
    @genre = params_upd[:genre] if params_upd[:genre]
    @year = params_upd[:year] if params_upd[:year]
  end

  def self.from_file(cd_path)
    lines = File.readlines(cd_path, chomp: true)
    movie = Cd.new( title: lines[0], performer: lines[1], genre: lines[2], year: lines[3], price: lines[4], quantity: lines[5])
  end
end
