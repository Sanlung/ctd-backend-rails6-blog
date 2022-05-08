# Pages controller
class PagesController < ApplicationController
  before_action :set_page, only: %i[show edit update destroy] # equals except: [:index, :new, :create]


  # GET
  def index
    @pages = Page.all
  end

  # GET
  def show; end

  # GET
  def new
    @page = Page.new
  end

  # GET
  def edit; end

  # POST
  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to @page
  end

  # PUT/PATCH
  def update
    @page.update(page_params)
    redirect_to @page
  end

  # DELETE
  def destroy
    @page.destroy
    redirect_to pages_path
  end

  private

  def page_params
    params.require(:page).permit(:title, :body, :slug)
  end

  def set_page
    @page = Page.find(params[:id])
  end
end
