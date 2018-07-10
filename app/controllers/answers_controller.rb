class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]
  
  def index
    @answers = Answer.all
  end

  def show
  end

  def new
    @answer = Answer.new
  end

  def edit
  end

  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @answer = Answer.new(answer_params)
    @answer.user_id =current_user.id #currentUserの情報を取得する
    @answer.ranking_id = @ranking.id
    respond_to do |format|
      if @answer.save(answer_params)
        format.html { redirect_to root_path, notice: '答えが登録されました' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Answer was successfully destroyed.' }
    end
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.fetch(:answer, {})
    end
end
