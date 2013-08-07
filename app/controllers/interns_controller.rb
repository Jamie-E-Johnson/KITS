class InternsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index

    @intern = Intern.new
    @interns =Intern.all
    @interns = Intern.paginate(:page => params[:page], :per_page => 25)

    @search = Search.new
    #@interns = Intern.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 25, :page => params[:page])

    respond_to do |format|
      format.html
      format.pdf do
        pdf = InternPdf.new(@interns)
        send_data pdf.render, filename: "reports.pdf",
                  type: "application/pdf"
      end
    end


  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @intern = Intern.find(params[:id])
    @internships = Internship.where(intern_id: @intern.id)
    respond_to do |format|
      format.html #show.html.erb
      format.json { render json: @intern }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @intern = Intern.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @intern }
    end
  end

  # GET /posts/1/edit
  def edit
    @intern = Intern.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @intern = Intern.new(intern_params)


    if @intern.save
      redirect_to @intern, notice: 'Post was successfully created.'
    else
      render action: "new"
    end

  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @intern = Intern.find(params[:id])


    if @intern.update_attributes(intern_params)
      redirect_to @intern, notice: 'Post was successfully updated.'
    else
      render action: "edit"

    end

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @intern = Intern.find(params[:id])
    @intern.destroy


    redirect_to searches_url


  end


  def search

    #@interns = Intern.where("#{params["Select Categories"].parameterize.underscore} like ?", "%#{params[:query]},%").paginate(:joins => params[:intern],:page => params[:page], :per_page => 25)

    @interns = Intern.filtered_results(params[:search])
    @search = Search.new if @search.nil?

    #@interns = Intern.where("#{params['Select Categories'].parameterize.underscore} like ?", "%#{params[:query]}%").paginate(:page => params[:page], :per_page => 25, :joins => 'search')
    render :index
  end

  def add_fields
    render partial: 'interns/search_attribute_fields'
  end

   def remove_fields

end

  def add_internship

  end

  private

  def intern_params
    params.require(:intern).permit(:first_name, :middle_initial, :last_name, :school, :home_city, :home_state, :local_city,:local_state, :classification, :dob, :ethnicity, :major, :minor, :home_congress_district, :school_congress_district)
  end
end
