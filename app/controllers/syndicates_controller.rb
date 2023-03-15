class SyndicatesController < ApplicationController

  

  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    puts params[:first_name]
    puts resume_params
    @resume = Resume.new(resume_params)
    
    if @resume.save
       redirect_to syndicates_index_path, notice: "The resume #{@resume.first_name} has been uploaded."
    else
      puts @resume.errors.full_messages
       render syndicates_index_path
    end
  end

  def about
  end

  def contact
  end

  def guard
  end

  def service
  end

  def single
  end

  def careers
    @resumes = Resume.all
  end

  private
  def resume_params
    params.permit(:first_name,:last_name,:dob,:marital_status,:gender,:mob_num,:email,:current_address,:experience,:key_skills,:res_attachment)
  end

end
