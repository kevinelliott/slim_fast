require 'test_helper'

module SlimFast
  class ShortUrlsControllerTest < ActionController::TestCase
    setup do
      @short_url = short_urls(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:short_urls)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create short_url" do
      assert_difference('ShortUrl.count') do
        post :create, short_url: { code: @short_url.code, description: @short_url.description, destination_url: @short_url.destination_url, domain_id: @short_url.domain_id, expansion_count: @short_url.expansion_count, name: @short_url.name, owner_id: @short_url.owner_id, owner_type: @short_url.owner_type, utm_campaign: @short_url.utm_campaign, utm_content: @short_url.utm_content, utm_enabled: @short_url.utm_enabled, utm_medium: @short_url.utm_medium, utm_source: @short_url.utm_source, utm_term: @short_url.utm_term }
      end
  
      assert_redirected_to short_url_path(assigns(:short_url))
    end
  
    test "should show short_url" do
      get :show, id: @short_url
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @short_url
      assert_response :success
    end
  
    test "should update short_url" do
      put :update, id: @short_url, short_url: { code: @short_url.code, description: @short_url.description, destination_url: @short_url.destination_url, domain_id: @short_url.domain_id, expansion_count: @short_url.expansion_count, name: @short_url.name, owner_id: @short_url.owner_id, owner_type: @short_url.owner_type, utm_campaign: @short_url.utm_campaign, utm_content: @short_url.utm_content, utm_enabled: @short_url.utm_enabled, utm_medium: @short_url.utm_medium, utm_source: @short_url.utm_source, utm_term: @short_url.utm_term }
      assert_redirected_to short_url_path(assigns(:short_url))
    end
  
    test "should destroy short_url" do
      assert_difference('ShortUrl.count', -1) do
        delete :destroy, id: @short_url
      end
  
      assert_redirected_to short_urls_path
    end
  end
end
