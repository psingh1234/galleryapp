class TagsController < ApplicationController
  def index
    puts("hi")
    debugger
    puts("i am here")
    
  end
  def create
 
     debugger
        @tag = Tag.new( params.require(:tag).permit! )
        @tag.save

  
   
   
    
    
    
    redirect_to :back
  end
  
end
