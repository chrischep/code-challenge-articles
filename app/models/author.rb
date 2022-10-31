class Author
  attr_accessor :name
@@all=||

  def initialize(name)
    @name = name
  @@all<<self
  end
  def articles
    Article.all.select{|article|article.author==self}
  end
  def magazines
    article.map{|article|article.magazine}.uniq
  end


end
