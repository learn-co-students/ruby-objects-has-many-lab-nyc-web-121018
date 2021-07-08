class Post

    @@all = []

    attr_accessor :title, :author

    def initialize(title, author = nil)
      @title = title
      @author = author

      @@all << self
    end

    def self.all
      @@all
    end

    def author_name
      if !!@author
        self.author.name
      else
        nil
      end
    end

    # def author_name
    #   # Artist.all.select do |song|
    #   #   song.artist == self
    #   # end
    #   if !!@author
    #     @author.name
    #   else
    #     nil
    #   end
    # end


end
