class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  helper_method :culc

  def show
    @twitter_url=[]
    @line_url=[]
    @facebook_url=[]
    for i in 0..@user.answer.length-1 do
    @twitter_url.push(URI.encode(
        "http://twitter.com/intent/tweet?original_referer=" +
        request.url +
        "&url=" +
        request.url +
        "&text=" +
        "ランキング「"+@user.answer[i].ranking.title+"」に回答しました！"
        ))
    @line_url.push(URI.encode(
        "http://line.me/R/msg/text/?" +
        request.url +
        "&url=" +
        request.url +
        "&text=" +
        "ランキング「"+@user.answer[i].ranking.title+"」に回答しました！"
      ))
      @facebook_url.push(URI.encode(
        "https://www.facebook.com/sharer/sharer.php?" +
        request.url +
        "&url=" +
        request.url +
        "&text=" +
        "ランキング「"+@user.answer[i].ranking.title+"」に回答しました！"
      ))
    end
  end

  def culc(rank,number)
    ranks=[]
      if @user.answer[number].answer1==rank
        ranks.push(@user.answer[number].ranking.element1)
      end
      if @user.answer[number].answer2==rank
        ranks.push(@user.answer[number].ranking.element2)
      end
      if @user.answer[number].answer3==rank
        ranks.push(@user.answer[number].ranking.element3)
      end
      if @user.answer[number].answer4==rank
        ranks.push(@user.answer[number].ranking.element4)
      end
      if @user.answer[number].answer5==rank
        ranks.push(@user.answer[number].ranking.element5)
      end
      if @user.answer[number].answer6==rank
        ranks.push(@user.answer[number].ranking.element6)
      end
      if @user.answer[number].answer7==rank
        ranks.push(@user.answer[number].ranking.element7)
      end
      if @user.answer[number].answer8==rank
        ranks.push(@user.answer[number].ranking.element8)
      end
      if @user.answer[number].answer9==rank
        ranks.push(@user.answer[number].ranking.element9)
      end
      if @user.answer[number].answer10==rank
        ranks.push(@user.answer[number].ranking.element10)
      end
      if @user.answer[number].answer11==rank
        ranks.push(@user.answer[number].ranking.element11)
      end
      if @user.answer[number].answer12==rank
        ranks.push(@user.answer[number].ranking.element12)
      end
      if @user.answer[number].answer13==rank
        ranks.push(@user.answer[number].ranking.element13)
      end
      if @user.answer[number].answer14==rank
        ranks.push(@user.answer[number].ranking.element14)
      end
      if @user.answer[number].answer15==rank
        ranks.push(@user.answer[number].ranking.element15)
      end
      if @user.answer[number].answer16==rank
        ranks.push(@user.answer[number].ranking.element16)
      end
      if @user.answer[number].answer17==rank
        ranks.push(@user.answer[number].ranking.element17)
      end
      if @user.answer[number].answer18==rank
        ranks.push(@user.answer[number].ranking.element18)
      end
      if @user.answer[number].answer19==rank
        ranks.push(@user.answer[number].ranking.element19)
      end
      if @user.answer[number].answer20==rank
        ranks.push(@user.answer[number].ranking.element20)
      end
      if @user.answer[number].answer21==rank
        ranks.push(@user.answer[number].ranking.element21)
      end
      if @user.answer[number].answer22==rank
        ranks.push(@user.answer[number].ranking.element22)
      end
      if @user.answer[number].answer23==rank
        ranks.push(@user.answer[number].ranking.element23)
      end
      if @user.answer[number].answer24==rank
        ranks.push(@user.answer[number].ranking.element24)
      end
      if @user.answer[number].answer25==rank
        ranks.push(@user.answer[number].ranking.element25)
      end
      if @user.answer[number].answer26==rank
        ranks.push(@user.answer[number].ranking.element26)
      end
      if @user.answer[number].answer27==rank
        ranks.push(@user.answer[number].ranking.element27)
      end
      if @user.answer[number].answer28==rank
        ranks.push(@user.answer[number].ranking.element28)
      end
      if @user.answer[number].answer29==rank
        ranks.push(@user.answer[number].ranking.element29)
      end
      if @user.answer[number].answer30==rank
        ranks.push(@user.answer[number].ranking.element30)
      end
      if @user.answer[number].answer31==rank
        ranks.push(@user.answer[number].ranking.element31)
      end
      if @user.answer[number].answer32==rank
        ranks.push(@user.answer[number].ranking.element32)
      end
      if @user.answer[number].answer33==rank
        ranks.push(@user.answer[number].ranking.element33)
      end
      if @user.answer[number].answer34==rank
        ranks.push(@user.answer[number].ranking.element34)
      end
      if @user.answer[number].answer35==rank
        ranks.push(@user.answer[number].ranking.element35)
      end
      if @user.answer[number].answer36==rank
        ranks.push(@user.answer[number].ranking.element36)
      end
      if @user.answer[number].answer37==rank
        ranks.push(@user.answer[number].ranking.element37)
      end
      if @user.answer[number].answer38==rank
        ranks.push(@user.answer[number].ranking.element38)
      end
      if @user.answer[number].answer39==rank
        ranks.push(@user.answer[number].ranking.element39)
      end
      if @user.answer[number].answer40==rank
        ranks.push(@user.answer[number].ranking.element40)
      end
      if @user.answer[number].answer41==rank
        ranks.push(@user.answer[number].ranking.element41)
      end
      if @user.answer[number].answer42==rank
        ranks.push(@user.answer[number].ranking.element42)
      end
      if @user.answer[number].answer43==rank
        ranks.push(@user.answer[number].ranking.element43)
      end
      if @user.answer[number].answer44==rank
        ranks.push(@user.answer[number].ranking.element44)
      end
      if @user.answer[number].answer45==rank
        ranks.push(@user.answer[number].ranking.element45)
      end
      if @user.answer[number].answer46==rank
        ranks.push(@user.answer[number].ranking.element46)
      end
      if @user.answer[number].answer47==rank
        ranks.push(@user.answer[number].ranking.element47)
      end
      if @user.answer[number].answer48==rank
        ranks.push(@user.answer[number].ranking.element48)
      end
      if @user.answer[number].answer49==rank
        ranks.push(@user.answer[number].ranking.element49)
      end
      if @user.answer[number].answer50==rank
        ranks.push(@user.answer[number].ranking.element50)
      end      
      return ranks.join(" , ")
    end

  def create
  end

  def index

  end

  def update

  end

  def delete
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
