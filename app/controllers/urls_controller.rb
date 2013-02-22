class UrlsController < ApplicationController
  def all # Show all shortened links
    @title = "All shorten URLs"
    @urls = Url.all
    respond_to do |format|
      format.html
    end
  end
  def new # Create a shortened link
    @title = "Create a URL shortened"
    @urls = Url.new
  end
  def create
    @urls = Url.new(params[:url])
    if @urls.save
      flash[:url_id] = @urls.id # Add a flash message
      redirect_to new_url_url
    else
      render :action => "new"
    end
  end
  def show # Redirect ID towards the URL
    @urls = Url.find(params[:id])
    @urls.nb_access += 1 # Count the number of visit for the link
    @urls.save
    redirect_to @urls.url
  end
end
