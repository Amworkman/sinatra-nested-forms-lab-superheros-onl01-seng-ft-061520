class SuperHero

    @@all = []

    attr_accessor :name, :power, :biography

    def initialize(params)
        #binding.pry
        @name = params[:name]
        @power = params[:power]
        @biography = params[:biography]
        @@all << self
    end
     
    def self.all
        @@all
    end

    

end