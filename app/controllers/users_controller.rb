class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  helper_method :rank , :delete_answer

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

  def rank(rank,eval,answer)
    if rank==eval
      return answer
    end
  end

  def create
  end

  def index

  end

  def update

  end

  def delete_answer(answer)
    @answer=answer
        @answer.destroy
    respond_to do |format|
      format.html { redirect_to rankings_url, notice: 'Ranking was successfully destroyed.' }
      format.json { head :no_content }
    end
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
