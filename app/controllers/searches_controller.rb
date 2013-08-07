class SearchesController <  ApplicationController
  before_action :set_search, only: [:show, :edit, :destroy]
  helper_method :sort_column, :sort_direction
  require 'will_paginate/array'

  # GET /searches
  # GET /searches.json
  def index
    @intern = Intern.new

    #@interns = Intern.paginate(:page => params[:page], :per_page => 25)
    #@search = Search.new
    @search = Search.first
    @searches = Search.all
    @interns = @search.custom_search.order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 25)
    # @interns = @search.custom_search().order(params[:sort_by]).paginate(:page => params[:page], :per_page => 25)




    #maybe eventually add more saved seraches !?!?!?!?!?
    @search_attributes = Search.first.try(:search_attributes)


    #check to see if there's a saved search Search.count > 0


    #if there's a saved search, then create a method that filters the interns based off the Search Attributes

  end

  def show
    @search = Search.find(params[:id])

    respond_to do |format|
      format.html #show.html.haml
      format.json { render json: @search }
    end
  end







  # POST /searches
  # POST /searches.json
  def create
    #raise  StandardError
    Search.last.try(:destroy)
    @search = Search.new(params[:search].try(:permit!))
    #raise  StandardError
    respond_to do |format|

      if @search.save
        format.html { redirect_to searches_path }
        format.json { render action: 'show', status: :created, location: @search }
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @search = Search.find(params[:id])
    if @search.update(params[:search].try(:permit!))
      redirect_to searches_path
    else
      render action: "edit"
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    def searches_params
      params.require(:search).permit(:search_id, :drop_down, :criteria, :search_attributes_attributes)
    end

  def sort_column
    params[:sort] || "first_name"


  end

  def sort_direction
    params[:direction] || "asc"
  end

end


