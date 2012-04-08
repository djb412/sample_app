require 'spec_helper'
describe UsersController do
render_views

	describe "GET 'show'" do
<<<<<<< HEAD
	before(:each) do
		@user = Factory(:user)
	end
	it "should be successful" do
	get :show, :id => @user
	response.should be_success
	end
	it "should find the right user" do
	get :show, :id => @user
	assigns(:user).should == @user
	end
=======
		before(:each) do
			@user = Factory(:user)
		end
		#it "should be successful" do
		#	get :show, :id => @user
		#	response.should be_success
		#end
		#it "should find the right user" do
		#	assigns(:user).should == @user
		#	get :show, :id => @user
		#end
	
		#it "should have the right title" do
		#	get :show, :id => @user
		#	response.should have_selector("title", :content => @user.name)
		#end
		#it "should include the user's name" do
		#	get :show, :id => @user
		#	response.should have_selector("h1", :content => @user.name)
		#end
		#it "should have a profile image" do
		#	get :show, :id => @user
		#	response.should have_selector("h1>img", :class => "gravatar")
		#end
>>>>>>> modeling-users
	end

	it "should have the right title" do
	get :show, :id => @user
	response.should have_selector("title", :content => @user.name)
	end
	it "should include the user's name" do
	get :show, :id => @user
	response.should have_selector("h1", :content 		=> @user.name)
	end
	it "should have a profile image" do
	get :show, :id => @user
	response.should have_selector("h1>img", :class 		=> "gravatar")
	end

	describe "GET 'new'" do

	  it "should be successful" do
	  get 'new'
		response.should be_success
	  end
	  it "should have the right title" do
	  get 'new'
	  	response.should have_selector("title", :content => "Sign up")
	  end
	end
end
