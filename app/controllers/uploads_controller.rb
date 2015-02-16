class UploadsController < ApplicationController
  def index
    
    @album = Album.find(params[:album_id])
    @upload=Upload.where(:album_id=>params[:album_id])
    @tag=Tag.all
  end
  def edit
    
  end
  def destroy
 
    @album = Album.find(params[:album_id])
    @upload = @album.uploads.find(params[:id])
@upload.destroy
redirect_to album_uploads_path
   end
  
  
  
  def create

   @album = Album.find(params[:album_id])
   @upload = @album.uploads.create( params.require(:upload).permit! )
   
   redirect_to album_uploads_path
  end
  def new
    
    @album = Album.find(params[:album_id])
    @upload= @album.uploads.new
  end  
   
  end
  def show
    
  end
  private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
end

