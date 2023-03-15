class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end
 
  def new
    puts params[:first_name]
    puts resume_params
    @resume = Test.new(resume_params)
    
    if @resume.save
       redirect_to syndicates_careers_path, notice: "The resume #{@resume.first_name} has been uploaded."
    else
      puts @resume.errors.full_messages
       render syndicates_index_path
    end
  end
 
  def create
    puts resume_params,2222222222222222222222
    @resume = Resume.new(resume_params)
    
    if @resume.save
       redirect_to syndicates_careers_path, notice: "The resume #{@resume.first_name} has been uploaded."
    else
      puts @resume.errors.full_messages
       render syndicates_index_path
    end

  end
 
  def destroy
    @resume = Resume.find(params[:email])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.first_name} has been deleted."
  end

  private
  def resume_params
    puts "0000000000000000000000000000000000000000000000000"
    params.permit(:first_name)
    puts params[:first_name]
    puts 5555555555555555555555555555555555555555555555555555555555555555555
  end
end
