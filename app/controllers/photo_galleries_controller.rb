=begin
  This controller handles all photo gallery related activities.
  This controller handles listing , viewing, creating actions on gallery.
=end
class PhotoGalleriesController < ApplicationController

=begin
  This function is used to list photo_galleries 
=end
  def index
    @photo_galleries = PhotoGallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @photo_galleries }
    end
  end

=begin
  This function is used to show a specific gallery
=end
  def show
    @photo_gallery = PhotoGallery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @photo_gallery }
    end
  end

=begin
  This function is used to rendder the form for photo gallery
  The gallery inputs will be title and description.
=end
  def new
    @photo_gallery = PhotoGallery.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @photo_gallery }
    end
  end

=begin
  This function is used to edit the gallery
=end
  def edit
    @photo_gallery = PhotoGallery.find(params[:id])
  end

=begin
  This function is used to create the gallery
=end
  def create
    @photo_gallery = PhotoGallery.new(params[:photo_gallery])
    @photo_gallery.photo_items.push(PhotoItem.where(:id => params[:item_ids]))
    respond_to do |format|
      if @photo_gallery.save
        format.html { redirect_to @photo_gallery, :notice => 'Photo gallery was successfully created.' }
        format.json { render :json => @photo_gallery, :status => :created, :location => @photo_gallery }
      else
        format.html { render :action => "new" }
        format.json { render :json => @photo_gallery.errors, :status => :unprocessable_entity }
      end
    end
  end

=begin
  This function is used to update the gallery
=end
  def update
    @photo_gallery = PhotoGallery.find(params[:id])

    respond_to do |format|
      if @photo_gallery.update_attributes(params[:photo_gallery])
        format.html { redirect_to @photo_gallery, :notice => 'Photo gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @photo_gallery.errors, :status => :unprocessable_entity }
      end
    end
  end

=begin
  This function is used to destroy the gallery
=end
  def destroy
    @photo_gallery = PhotoGallery.find(params[:id])
    @photo_gallery.destroy

    respond_to do |format|
      format.html { redirect_to photo_galleries_url }
      format.json { head :no_content }
    end
  end

  
end
