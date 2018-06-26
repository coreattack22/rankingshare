class RankingsController < ApplicationController
  before_action :page_explain
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]
  before_action :answer_params, only: [:update]

  helper_method :rank

  def index
    @rankings = Ranking.all
  end

  def rank(rank,eval,answer)
    if rank==eval
      return answer
    end
  end

  def show
  end

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new(ranking_params)

    respond_to do |format|
      if @ranking.save
        format.html { redirect_to root_path, notice: 'Ranking was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @answer = Answer.new
    #質問の数だけ、解答欄を出す
    @elements=[]
    for i in 1..50 do
      unless eval("@ranking.element#{i} ==nil")
        @elements.push("answer.answer["+i.to_s+"]")
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

  def destroy(ranking_id)
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to rankings_url, notice: 'Ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def page_explain
      @page_explain="以下のランキングに答えることができます"
    end

    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ranking_params
      params.require(:ranking).permit(:maker_id, :title, :ranked_count, :answerd_at, :element1, :element2, :element3, :element4, :element5, :element6, :element7, :element8, :element9, :element10, :element11, :element12, :element13, :element14, :element15, :element16, :element17, :element18, :element19, :element20, :element21, :element22, :element23, :element24, :element25, :element26, :element27, :element28, :element29, :element30, :element31, :element32, :element33, :element34, :element35, :element36, :element37, :element38, :element39, :element40, :element41, :element42, :element43, :element44, :element45, :element46, :element47, :element48, :element49, :element50)
    end

    def answer_params
      params.require(:answer).permit(:ranking_id,:answerer_id,:comment,:answer1,:answer2,:answer3,:answer4,:answer5,:answer6,:answer7,:answer8,:answer9,:answer10,:answer11,:answer12,:answer13,:answer14,:answer15,:answer16,:answer17,:answer18,:answer19,:answer20,:answer21,:answer22,:answer23,:answer24,:answer25,:answer26,:answer27,:answer28,:answer29,:answer30,:answer31,:answer32,:answer33,:answer34,:answer35,:answer36,:answer37,:answer38,:answer39,:answer40,:answer41,:answer42,:answer43,:answer44,:answer45,:answer46,:answer47,:answer48,:answer49,:answer50)
    end

end
