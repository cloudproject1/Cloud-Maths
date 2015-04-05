class QuestsController < ApplicationController
  before_action :set_quest, only: [:show, :edit, :update, :destroy]

  respond_to :html

  require 'Mathques'
  require 'Checkques'

 def displayquest
 $question1, $ans1, $question2, $ans2, $question3, $ans3, $question4, $ans4, $question5, $ans5, $question6, $ans6, $question7, $ans7, $question8, $ans8, $question9, $ans9, $question10, $ans10 = Generate.createquestions()
end

def checkques
@input1 = params[:inputone]
@p1 = Checkans.Checkques($inputone.to_i)
@result = @p1.checkques
end


  def index
  @quests = Quest.all
respond_with(@quests)
  end



 def mathques
 @input1 = params[:search_string]
 @result = Generate.createquestions(@input1.to_i)
 end


  def show
    respond_with(@quest)
  end

  def new
    @quest = Quest.new
    respond_with(@quest)
  end

  def edit
  end

  def create
    @quest = Quest.new(quest_params)
    @quest.save
    respond_with(@quest)
  end

  def update
    @quest.update(quest_params)
    respond_with(@quest)
  end

  def destroy
    @quest.destroy
    respond_with(@quest)
  end

  private
    def set_quest
      @quest = Quest.find(params[:id])
    end

    def quest_params
      params.require(:quest).permit(:questions, :anser)
    end
end
