class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  respond_to :html


  require 'Mathques'
  require 'Checkques'

def displayresult
@input1 = params[:inputone]
@p1 = Checkans.Checkques($inputone.to_i)
@result = @p1.displayresult
end 

  #def index
   # @results = Result.all
    #respond_with(@results)
  #end

   def index
   @results = Quest.all
   respond_with(@results)
end

  def show
    respond_with(@result)
  end

  def new
    @result = Result.new
    respond_with(@result)
  end

  def edit
  end

  def create
    @result = Result.new(result_params)
    @result.save
    respond_with(@result)
  end

  def update
    @result.update(result_params)
    respond_with(@result)
  end

  def destroy
    @result.destroy
    respond_with(@result)
  end

  private
    def set_result
      @result = Result.find(params[:id])
    end

    def result_params
      params.require(:result).permit(:grade)
    end
end
