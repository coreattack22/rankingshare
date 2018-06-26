require 'test_helper'

class RankingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ranking = rankings(:one)
  end

  test "should get index" do
    get rankings_url
    assert_response :success
  end

  test "should get new" do
    get new_ranking_url
    assert_response :success
  end

  test "should create ranking" do
    assert_difference('Ranking.count') do
      post rankings_url, params: { ranking: { answerd_at: @ranking.answerd_at, element10: @ranking.element10, element11: @ranking.element11, element12: @ranking.element12, element13: @ranking.element13, element14: @ranking.element14, element15: @ranking.element15, element16: @ranking.element16, element17: @ranking.element17, element18: @ranking.element18, element19: @ranking.element19, element1: @ranking.element1, element20: @ranking.element20, element21: @ranking.element21, element22: @ranking.element22, element23: @ranking.element23, element24: @ranking.element24, element25: @ranking.element25, element26: @ranking.element26, element27: @ranking.element27, element28: @ranking.element28, element29: @ranking.element29, element2: @ranking.element2, element30: @ranking.element30, element31: @ranking.element31, element32: @ranking.element32, element33: @ranking.element33, element34: @ranking.element34, element35: @ranking.element35, element36: @ranking.element36, element37: @ranking.element37, element38: @ranking.element38, element39: @ranking.element39, element3: @ranking.element3, element40: @ranking.element40, element41: @ranking.element41, element42: @ranking.element42, element43: @ranking.element43, element44: @ranking.element44, element45: @ranking.element45, element46: @ranking.element46, element47: @ranking.element47, element48: @ranking.element48, element49: @ranking.element49, element4: @ranking.element4, element50: @ranking.element50, element5: @ranking.element5, element6: @ranking.element6, element7: @ranking.element7, element8: @ranking.element8, element9: @ranking.element9, maker_id: @ranking.maker_id, ranked_count: @ranking.ranked_count, title: @ranking.title } }
    end

    assert_redirected_to ranking_url(Ranking.last)
  end

  test "should show ranking" do
    get ranking_url(@ranking)
    assert_response :success
  end

  test "should get edit" do
    get edit_ranking_url(@ranking)
    assert_response :success
  end

  test "should update ranking" do
    patch ranking_url(@ranking), params: { ranking: { answerd_at: @ranking.answerd_at, element10: @ranking.element10, element11: @ranking.element11, element12: @ranking.element12, element13: @ranking.element13, element14: @ranking.element14, element15: @ranking.element15, element16: @ranking.element16, element17: @ranking.element17, element18: @ranking.element18, element19: @ranking.element19, element1: @ranking.element1, element20: @ranking.element20, element21: @ranking.element21, element22: @ranking.element22, element23: @ranking.element23, element24: @ranking.element24, element25: @ranking.element25, element26: @ranking.element26, element27: @ranking.element27, element28: @ranking.element28, element29: @ranking.element29, element2: @ranking.element2, element30: @ranking.element30, element31: @ranking.element31, element32: @ranking.element32, element33: @ranking.element33, element34: @ranking.element34, element35: @ranking.element35, element36: @ranking.element36, element37: @ranking.element37, element38: @ranking.element38, element39: @ranking.element39, element3: @ranking.element3, element40: @ranking.element40, element41: @ranking.element41, element42: @ranking.element42, element43: @ranking.element43, element44: @ranking.element44, element45: @ranking.element45, element46: @ranking.element46, element47: @ranking.element47, element48: @ranking.element48, element49: @ranking.element49, element4: @ranking.element4, element50: @ranking.element50, element5: @ranking.element5, element6: @ranking.element6, element7: @ranking.element7, element8: @ranking.element8, element9: @ranking.element9, maker_id: @ranking.maker_id, ranked_count: @ranking.ranked_count, title: @ranking.title } }
    assert_redirected_to ranking_url(@ranking)
  end

  test "should destroy ranking" do
    assert_difference('Ranking.count', -1) do
      delete ranking_url(@ranking)
    end

    assert_redirected_to rankings_url
  end
end
