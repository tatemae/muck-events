require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::Muck::ProfilesController do
  
  it { should require_login :edit, :get }
  
  describe "logged in as normal user" do
    before do
      @user = Factory(:user)
      activate_authlogic
      login_as @user
    end
    should_require_role('admin', :redirect_url => '/login', :edit => :get)
  end

  describe "logged in as admin" do

    before do
      @admin = Factory(:user)
      @admin_role = Factory(:role, :rolename => 'administrator')
      @admin.roles << @admin_role
      activate_authlogic
      login_as @admin
    end

    describe "GET edit" do
      before do
        get :edit
      end
      it { should respond_with :success }
      it { should render_template :edit }
    end

  end

end