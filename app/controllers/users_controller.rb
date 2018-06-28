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
