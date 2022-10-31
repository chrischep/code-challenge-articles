class Article
    @@all = []
    attr_reader :author, :magazine, :title

    def self.all
        @@all
    end
    def initialize (author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end
end
