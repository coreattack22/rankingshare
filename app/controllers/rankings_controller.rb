class RankingsController < ApplicationController
  before_action :page_explain
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]
  before_action :answer_params, only: [:update]
  helper_method :culc, :menu, :delete_answer

  def delete_answer(ranking)

  end

  def index
    @rankings = Ranking.all

  end

  def menu(ranking)
    menu=[]
    unless ranking.element1==""
      menu.push(ranking.element1)
    end
    unless ranking.element2==""
      menu.push(ranking.element2)
    end
    unless ranking.element3==""
      menu.push(ranking.element3)
    end
    unless ranking.element4==""
      menu.push(ranking.element4)
    end
    unless ranking.element5==""
      menu.push(ranking.element5)
    end
    menu_string=menu.join(" , ")
    unless ranking.element6==""
      menu_string=menu_string+"...."
    end
    return menu_string
  end

  def culc(rank,number)
    ranks=[]
      if @ranking.answer[number].answer1==rank
        ranks.push(@ranking.element1)
      end
      if @ranking.answer[number].answer2==rank
        ranks.push(@ranking.element2)
      end
      if @ranking.answer[number].answer3==rank
        ranks.push(@ranking.element3)
      end
      if @ranking.answer[number].answer4==rank
        ranks.push(@ranking.element4)
      end
      if @ranking.answer[number].answer5==rank
        ranks.push(@ranking.element5)
      end
      if @ranking.answer[number].answer6==rank
        ranks.push(@ranking.element6)
      end
      if @ranking.answer[number].answer7==rank
        ranks.push(@ranking.element7)
      end
      if @ranking.answer[number].answer8==rank
        ranks.push(@ranking.element8)
      end
      if @ranking.answer[number].answer9==rank
        ranks.push(@ranking.element9)
      end
      if @ranking.answer[number].answer10==rank
        ranks.push(@ranking.element10)
      end
      if @ranking.answer[number].answer11==rank
        ranks.push(@ranking.element11)
      end
      if @ranking.answer[number].answer12==rank
        ranks.push(@ranking.element12)
      end
      if @ranking.answer[number].answer13==rank
        ranks.push(@ranking.element13)
      end
      if @ranking.answer[number].answer14==rank
        ranks.push(@ranking.element14)
      end
      if @ranking.answer[number].answer15==rank
        ranks.push(@ranking.element15)
      end
      if @ranking.answer[number].answer16==rank
        ranks.push(@ranking.element16)
      end
      if @ranking.answer[number].answer17==rank
        ranks.push(@ranking.element17)
      end
      if @ranking.answer[number].answer18==rank
        ranks.push(@ranking.element18)
      end
      if @ranking.answer[number].answer19==rank
        ranks.push(@ranking.element19)
      end
      if @ranking.answer[number].answer20==rank
        ranks.push(@ranking.element20)
      end
      if @ranking.answer[number].answer21==rank
        ranks.push(@ranking.element21)
      end
      if @ranking.answer[number].answer22==rank
        ranks.push(@ranking.element22)
      end
      if @ranking.answer[number].answer23==rank
        ranks.push(@ranking.element23)
      end
      if @ranking.answer[number].answer24==rank
        ranks.push(@ranking.element24)
      end
      if @ranking.answer[number].answer25==rank
        ranks.push(@ranking.element25)
      end
      if @ranking.answer[number].answer26==rank
        ranks.push(@ranking.element26)
      end
      if @ranking.answer[number].answer27==rank
        ranks.push(@ranking.element27)
      end
      if @ranking.answer[number].answer28==rank
        ranks.push(@ranking.element28)
      end
      if @ranking.answer[number].answer29==rank
        ranks.push(@ranking.element29)
      end
      if @ranking.answer[number].answer30==rank
        ranks.push(@ranking.element30)
      end
      if @ranking.answer[number].answer31==rank
        ranks.push(@ranking.element31)
      end
      if @ranking.answer[number].answer32==rank
        ranks.push(@ranking.element32)
      end
      if @ranking.answer[number].answer33==rank
        ranks.push(@ranking.element33)
      end
      if @ranking.answer[number].answer34==rank
        ranks.push(@ranking.element34)
      end
      if @ranking.answer[number].answer35==rank
        ranks.push(@ranking.element35)
      end
      if @ranking.answer[number].answer36==rank
        ranks.push(@ranking.element36)
      end
      if @ranking.answer[number].answer37==rank
        ranks.push(@ranking.element37)
      end
      if @ranking.answer[number].answer38==rank
        ranks.push(@ranking.element38)
      end
      if @ranking.answer[number].answer39==rank
        ranks.push(@ranking.element39)
      end
      if @ranking.answer[number].answer40==rank
        ranks.push(@ranking.element40)
      end
      if @ranking.answer[number].answer41==rank
        ranks.push(@ranking.element41)
      end
      if @ranking.answer[number].answer42==rank
        ranks.push(@ranking.element42)
      end
      if @ranking.answer[number].answer43==rank
        ranks.push(@ranking.element43)
      end
      if @ranking.answer[number].answer44==rank
        ranks.push(@ranking.element44)
      end
      if @ranking.answer[number].answer45==rank
        ranks.push(@ranking.element45)
      end
      if @ranking.answer[number].answer46==rank
        ranks.push(@ranking.element46)
      end
      if @ranking.answer[number].answer47==rank
        ranks.push(@ranking.element47)
      end
      if @ranking.answer[number].answer48==rank
        ranks.push(@ranking.element48)
      end
      if @ranking.answer[number].answer49==rank
        ranks.push(@ranking.element49)
      end
      if @ranking.answer[number].answer40==rank
        ranks.push(@ranking.element50)
      end
      menu=ranks.join(" , ")
      return menu
    end

  def show
  end

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new(ranking_params)
    @ranking.maker_id=current_user.id

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

  def destroy
    @ranking.delete_flg='true'
    @ranking.save
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
