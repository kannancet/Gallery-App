=begin
  This controller handles all photo item related activities.
  This controller handles listing , viewing, creating actions on items in a gallery.
=end
class PhotoItemsController < ApplicationController

=begin
  This function is used to list photo_items 
=end
  def index
    @photo_items = PhotoItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @photo_items }
    end
  end

=begin
  This function is used to show a specific items
=end
  def show
    @photo_item = PhotoItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @photo_item }
    end
  end

=begin
  This function is used to render form for new item.
=end
  def new
    @photo_item = PhotoItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @photo_item }
    end
  end

=begin
  This function is used to edit an item.
=end
  def edit
    @photo_item = PhotoItem.find(params[:id])
  end

=begin
  This function is used to create an item.
=end
  def create
    @photo_item = PhotoItem.new(params[:photo_item])

    respond_to do |format|
      if @photo_item.save
        format.html { redirect_to @photo_item, :notice => 'Photo item was successfully created.' }
        format.json { render :json => @photo_item, :status => :created, :location => @photo_item }
      else
        format.html { render :action => "new" }
        format.json { render :json => @photo_item.errors, :status => :unprocessable_entity }
      end
    end
  end

=begin
  This function is used to update an item.
=end
  def update
    @photo_item = PhotoItem.find(params[:id])

    respond_to do |format|
      if @photo_item.update_attributes(params[:photo_item])
        format.html { redirect_to @photo_item, :notice => 'Photo item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @photo_item.errors, :status => :unprocessable_entity }
      end
    end
  end

=begin
  This function is used to destroy an item.
=end
  def destroy
    @photo_item = PhotoItem.find(params[:id])
    @photo_item.destroy

    respond_to do |format|
      format.html { redirect_to photo_items_url }
      format.json { head :no_content }
    end
  end
end
