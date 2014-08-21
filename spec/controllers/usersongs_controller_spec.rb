require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UsersongsController do

  # This should return the minimal set of attributes required to create a valid
  # Usersong. As you add validations to Usersong, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersongsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all usersongs as @usersongs" do
      usersong = Usersong.create! valid_attributes
      get :index, {}, valid_session
      assigns(:usersongs).should eq([usersong])
    end
  end

  describe "GET show" do
    it "assigns the requested usersong as @usersong" do
      usersong = Usersong.create! valid_attributes
      get :show, {:id => usersong.to_param}, valid_session
      assigns(:usersong).should eq(usersong)
    end
  end

  describe "GET new" do
    it "assigns a new usersong as @usersong" do
      get :new, {}, valid_session
      assigns(:usersong).should be_a_new(Usersong)
    end
  end

  describe "GET edit" do
    it "assigns the requested usersong as @usersong" do
      usersong = Usersong.create! valid_attributes
      get :edit, {:id => usersong.to_param}, valid_session
      assigns(:usersong).should eq(usersong)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Usersong" do
        expect {
          post :create, {:usersong => valid_attributes}, valid_session
        }.to change(Usersong, :count).by(1)
      end

      it "assigns a newly created usersong as @usersong" do
        post :create, {:usersong => valid_attributes}, valid_session
        assigns(:usersong).should be_a(Usersong)
        assigns(:usersong).should be_persisted
      end

      it "redirects to the created usersong" do
        post :create, {:usersong => valid_attributes}, valid_session
        response.should redirect_to(Usersong.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved usersong as @usersong" do
        # Trigger the behavior that occurs when invalid params are submitted
        Usersong.any_instance.stub(:save).and_return(false)
        post :create, {:usersong => { "user" => "invalid value" }}, valid_session
        assigns(:usersong).should be_a_new(Usersong)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Usersong.any_instance.stub(:save).and_return(false)
        post :create, {:usersong => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested usersong" do
        usersong = Usersong.create! valid_attributes
        # Assuming there are no other usersongs in the database, this
        # specifies that the Usersong created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Usersong.any_instance.should_receive(:update).with({ "user" => "" })
        put :update, {:id => usersong.to_param, :usersong => { "user" => "" }}, valid_session
      end

      it "assigns the requested usersong as @usersong" do
        usersong = Usersong.create! valid_attributes
        put :update, {:id => usersong.to_param, :usersong => valid_attributes}, valid_session
        assigns(:usersong).should eq(usersong)
      end

      it "redirects to the usersong" do
        usersong = Usersong.create! valid_attributes
        put :update, {:id => usersong.to_param, :usersong => valid_attributes}, valid_session
        response.should redirect_to(usersong)
      end
    end

    describe "with invalid params" do
      it "assigns the usersong as @usersong" do
        usersong = Usersong.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usersong.any_instance.stub(:save).and_return(false)
        put :update, {:id => usersong.to_param, :usersong => { "user" => "invalid value" }}, valid_session
        assigns(:usersong).should eq(usersong)
      end

      it "re-renders the 'edit' template" do
        usersong = Usersong.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Usersong.any_instance.stub(:save).and_return(false)
        put :update, {:id => usersong.to_param, :usersong => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested usersong" do
      usersong = Usersong.create! valid_attributes
      expect {
        delete :destroy, {:id => usersong.to_param}, valid_session
      }.to change(Usersong, :count).by(-1)
    end

    it "redirects to the usersongs list" do
      usersong = Usersong.create! valid_attributes
      delete :destroy, {:id => usersong.to_param}, valid_session
      response.should redirect_to(usersongs_url)
    end
  end

end