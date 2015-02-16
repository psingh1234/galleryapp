class TagsController < ApplicationController
  def index
    puts("hi")
  
    puts("i am here")
    
  end
  def create
 
   
        @tag = Tag.new( params.require(:tag).permit! )
        @tag.save

  
   
   
    
    
    
    redirect_to :back
  end
  
end
