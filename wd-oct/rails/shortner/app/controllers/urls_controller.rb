class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to urls_path
    else
      render new: 'new'
    end
  end

  def show

     @url = Url.find_by_short_url(params[:short_url])
     @url.update_attributes(:click => @url.click + 1)
     redirect_to @url.original_url

  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    redirect_to urls_path
  end

  private

  def url_params
    params[:url].permit(:original_url)
  end

end
