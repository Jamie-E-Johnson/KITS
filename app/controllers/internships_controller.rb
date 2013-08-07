class InternshipsController < ApplicationController

  def create
    @intern = Intern.find(params[:intern_id])
    @internship = @intern.internships.create(internship_params)
    redirect_to intern_path(@intern)
  end

  def destroy
    @intern = Intern.find(params[:intern_id])
    @internship = Internship.find(params[:id])
    #snipped for brevity
    @internship.destroy
    redirect_to intern_path(@intern)
  end


  def edit
    @intern = Intern.find(params[:intern_id])
    @internship = Internship.find(params[:id])

  end

  def index
    @intern = Intern.find(params[:intern_id])
  end

  def update
    @intern = Intern.find(params[:intern_id])
    @internship = Internship.find(params[:id])
    @internship.update(internship_params)
    redirect_to @intern
  end
  def show
  end

  def new
    @intern = Intern.find(params[:intern_id])
    @internship = @intern.internships.build
  end

  private
  def internship_params
    params.require(:internship).permit(:season, :year, :program, :intern_id)
  end


end
