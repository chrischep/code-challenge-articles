class Magazine
  @@all = []
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category
    @@all<<self

  end
  def self.all
    @@all
  end  

  def self.find_by_name(name)
    self.all.find{|magazine|magazine.name==name}
  end

  def article_titles
    articles.map{|article|article.title}
  end  

  def contributing_authors
    articles.map{|article| article.author}.select{|author| author.articles.count > 1}.uniq
  end

  def articles
    Article.all.select{|article| article.magazine == self}
  end

  def self.category
    self.all.group_by{|magazine| magazine.category}.transform_values{|magazines| magazines.count}
  end

  def self.article_titles
    self.all.map{|article| article.name}
  end

end
