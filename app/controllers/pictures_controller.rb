class PicturesController < ApplicationController

  def new_form

    render("pictures/new_form.html.erb")

  end

  def create_row

    @my_photo = Photo.new
    @my_photo.caption = params["the_caption"]
    @my_photo.source = params["image_url"]
    @my_photo.save

    @current_count = Photo.count

  #  render("pictures/create_row.html.erb")
    redirect_to("/photos")
  end

  def index

    @list_of_photos = Photo.all.order(:created_at => :desc)

    render("pictures/index.html.erb")
  end

  def show
    # The parameters look like: {"the_id"=>"4"}
    @my_photo = Photo.find(params["the_id"])

    render("pictures/show.html.erb")
  end

  def edit_form

    @my_photo = Photo.find(params["la_id"])

    render("pictures/edit_form.html.erb")
  end

  def update_row

    @my_photo = Photo.find(params["la_id"])
    @my_photo.caption = params["the_caption"]
    @my_photo.source = params["image_url"]
    @my_photo.save

    #render("pictures/update_row.html.erb")
    redirect_to("/photos/" + params["la_id"])
  end

  def destroy_row

    @my_photo = Photo.find(params["da_id"])
    @my_photo.destroy

    @current_count = Photo.count

    #render("pictures/destroy_row.html.erb")
    redirect_to("/photos")
  end

end
