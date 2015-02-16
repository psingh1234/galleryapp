class AlbumsController < ApplicationController
  def index
    # 
    #puts ""
    
      @album=current_user.albums.all
  end
  def create
   
    @album=current_user.albums.new(params.require(:album).permit!)

    @album.save
  
    redirect_to user_albums_path
    
  end
  def new
    @user = current_user
    @album = current_user.albums.new
    
  end
  def show
    #@album=Album.all
    
   

  end
  def update
      @album=current_user.albums.find(params[:id])
if @album.update(params.require(:album).permit(:album_name,:user_id))
redirect_to :back
end
  end
def edit
  
  puts ""
  @user=current_user
  @album=current_user.albums.find(params[:id])
end
def destroy
  
puts ""
@album = current_user.albums.find(params[:id])
@album.destroy
redirect_to :back
end    
end
