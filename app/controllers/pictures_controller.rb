class PicturesController < ApplicationController
  def new_form
     render("new_form.html.erb")
  end

  def create_row
     render("create_row.html.erb")
  end

  def index
     render("index.html.erb")
  end

  def show
    #the parameters look like {"the_id"}
     id_number = params["the_id"]
     p=Photo.find(id_number)
     @the_caption=p.caption
     @the_source=p.source
     @the_timestamp=p.created_at
     render("show.html.erb")
  end

  def edit_form
     render("edit_form.html.erb")
  end

  def update_row
     render("update_row.html.erb")
  end

  def destroy_row
     render("destroy_row.html.erb")
  end
end
