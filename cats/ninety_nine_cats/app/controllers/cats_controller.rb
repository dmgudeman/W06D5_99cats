

class CatsController < ApplicationController

    def index
        @cats = Cat.all
    end

    def create
        
    end

    def show 
        
    end
    
    def new

    end

    def edit

    end

    def update

    end
    
    private 

    def cat_param
        params.require(:cats).permit(:birth_date, :name, :color, :sex, :description)
        
    end

end