class InternshipsController < ApplicationController

  def create
    @intern = Intern.find(params[:intern_id])
    @internship = @intern.internship.create(params[:internship])
    redirect_to intern_path(@intern)
  end

  def destroy
    @intern = Intern.find(params[:intern_id])
    @internship = @intern.internship.find(params[:id])
    #snipped for brevity
    @internship.destroy
    redirect_to intern_path(@intern)
  end






end
