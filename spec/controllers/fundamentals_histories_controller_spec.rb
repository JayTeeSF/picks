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

describe FundamentalsHistoriesController do

  # This should return the minimal set of attributes required to create a valid
  # FundamentalsHistory. As you add validations to FundamentalsHistory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FundamentalsHistoriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all fundamentals_histories as @fundamentals_histories" do
      fundamentals_history = FundamentalsHistory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fundamentals_histories).should eq([fundamentals_history])
    end
  end

  describe "GET show" do
    it "assigns the requested fundamentals_history as @fundamentals_history" do
      fundamentals_history = FundamentalsHistory.create! valid_attributes
      get :show, {:id => fundamentals_history.to_param}, valid_session
      assigns(:fundamentals_history).should eq(fundamentals_history)
    end
  end

  describe "GET new" do
    it "assigns a new fundamentals_history as @fundamentals_history" do
      get :new, {}, valid_session
      assigns(:fundamentals_history).should be_a_new(FundamentalsHistory)
    end
  end

  describe "GET edit" do
    it "assigns the requested fundamentals_history as @fundamentals_history" do
      fundamentals_history = FundamentalsHistory.create! valid_attributes
      get :edit, {:id => fundamentals_history.to_param}, valid_session
      assigns(:fundamentals_history).should eq(fundamentals_history)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FundamentalsHistory" do
        expect {
          post :create, {:fundamentals_history => valid_attributes}, valid_session
        }.to change(FundamentalsHistory, :count).by(1)
      end

      it "assigns a newly created fundamentals_history as @fundamentals_history" do
        post :create, {:fundamentals_history => valid_attributes}, valid_session
        assigns(:fundamentals_history).should be_a(FundamentalsHistory)
        assigns(:fundamentals_history).should be_persisted
      end

      it "redirects to the created fundamentals_history" do
        post :create, {:fundamentals_history => valid_attributes}, valid_session
        response.should redirect_to(FundamentalsHistory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fundamentals_history as @fundamentals_history" do
        # Trigger the behavior that occurs when invalid params are submitted
        FundamentalsHistory.any_instance.stub(:save).and_return(false)
        post :create, {:fundamentals_history => {}}, valid_session
        assigns(:fundamentals_history).should be_a_new(FundamentalsHistory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FundamentalsHistory.any_instance.stub(:save).and_return(false)
        post :create, {:fundamentals_history => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fundamentals_history" do
        fundamentals_history = FundamentalsHistory.create! valid_attributes
        # Assuming there are no other fundamentals_histories in the database, this
        # specifies that the FundamentalsHistory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FundamentalsHistory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => fundamentals_history.to_param, :fundamentals_history => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested fundamentals_history as @fundamentals_history" do
        fundamentals_history = FundamentalsHistory.create! valid_attributes
        put :update, {:id => fundamentals_history.to_param, :fundamentals_history => valid_attributes}, valid_session
        assigns(:fundamentals_history).should eq(fundamentals_history)
      end

      it "redirects to the fundamentals_history" do
        fundamentals_history = FundamentalsHistory.create! valid_attributes
        put :update, {:id => fundamentals_history.to_param, :fundamentals_history => valid_attributes}, valid_session
        response.should redirect_to(fundamentals_history)
      end
    end

    describe "with invalid params" do
      it "assigns the fundamentals_history as @fundamentals_history" do
        fundamentals_history = FundamentalsHistory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FundamentalsHistory.any_instance.stub(:save).and_return(false)
        put :update, {:id => fundamentals_history.to_param, :fundamentals_history => {}}, valid_session
        assigns(:fundamentals_history).should eq(fundamentals_history)
      end

      it "re-renders the 'edit' template" do
        fundamentals_history = FundamentalsHistory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FundamentalsHistory.any_instance.stub(:save).and_return(false)
        put :update, {:id => fundamentals_history.to_param, :fundamentals_history => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fundamentals_history" do
      fundamentals_history = FundamentalsHistory.create! valid_attributes
      expect {
        delete :destroy, {:id => fundamentals_history.to_param}, valid_session
      }.to change(FundamentalsHistory, :count).by(-1)
    end

    it "redirects to the fundamentals_histories list" do
      fundamentals_history = FundamentalsHistory.create! valid_attributes
      delete :destroy, {:id => fundamentals_history.to_param}, valid_session
      response.should redirect_to(fundamentals_histories_url)
    end
  end

end
