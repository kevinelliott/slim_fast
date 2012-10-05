require 'test_helper'

module SlimFast
  class ShortDomainsControllerTest < ActionController::TestCase
    setup do
      @short_domain = short_domains(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:short_domains)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create short_domain" do
      assert_difference('ShortDomain.count') do
        post :create, short_domain: { domain: @short_domain.domain, is_default: @short_domain.is_default }
      end
  
      assert_redirected_to short_domain_path(assigns(:short_domain))
    end
  
    test "should show short_domain" do
      get :show, id: @short_domain
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @short_domain
      assert_response :success
    end
  
    test "should update short_domain" do
      put :update, id: @short_domain, short_domain: { domain: @short_domain.domain, is_default: @short_domain.is_default }
      assert_redirected_to short_domain_path(assigns(:short_domain))
    end
  
    test "should destroy short_domain" do
      assert_difference('ShortDomain.count', -1) do
        delete :destroy, id: @short_domain
      end
  
      assert_redirected_to short_domains_path
    end
  end
end
