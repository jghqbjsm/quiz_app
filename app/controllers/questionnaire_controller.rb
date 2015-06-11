class QuestionnaireController < ApplicationController
  def index
     @questionnaires = Questionnaire.paginate(page: params[:page])
  end
end
