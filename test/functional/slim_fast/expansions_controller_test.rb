require 'test_helper'

module SlimFast
  class ExpansionsControllerTest < ActionController::TestCase
    setup do
      @expansion = expansions(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:expansions)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create expansion" do
      assert_difference('Expansion.count') do
        post :create, expansion: { domain_id: @expansion.domain_id, referrer_url: @expansion.referrer_url, remote_addr: @expansion.remote_addr, remote_ip: @expansion.remote_ip, request_url: @expansion.request_url, short_url_id: @expansion.short_url_id, user_agent: @expansion.user_agent }
      end
  
      assert_redirected_to expansion_path(assigns(:expansion))
    end
  
    test "should show expansion" do
      get :show, id: @expansion
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @expansion
      assert_response :success
    end
  
    test "should update expansion" do
      put :update, id: @expansion, expansion: { domain_id: @expansion.domain_id, referrer_url: @expansion.referrer_url, remote_addr: @expansion.remote_addr, remote_ip: @expansion.remote_ip, request_url: @expansion.request_url, short_url_id: @expansion.short_url_id, user_agent: @expansion.user_agent }
      assert_redirected_to expansion_path(assigns(:expansion))
    end
  
    test "should destroy expansion" do
      assert_difference('Expansion.count', -1) do
        delete :destroy, id: @expansion
      end
  
      assert_redirected_to expansions_path
    end
  end
end
