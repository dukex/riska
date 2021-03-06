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

describe RiskAreasController do

  # This should return the minimal set of attributes required to create a valid
  # RiskArea. As you add validations to RiskArea, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all risk_areas as @risk_areas" do
      risk_area = RiskArea.create! valid_attributes
      get :index
      assigns(:risk_areas).should eq([risk_area])
    end
  end

  describe "GET show" do
    it "assigns the requested risk_area as @risk_area" do
      risk_area = RiskArea.create! valid_attributes
      get :show, :id => risk_area.id.to_s
      assigns(:risk_area).should eq(risk_area)
    end
  end

  describe "GET new" do
    it "assigns a new risk_area as @risk_area" do
      get :new
      assigns(:risk_area).should be_a_new(RiskArea)
    end
  end

  describe "GET edit" do
    it "assigns the requested risk_area as @risk_area" do
      risk_area = RiskArea.create! valid_attributes
      get :edit, :id => risk_area.id.to_s
      assigns(:risk_area).should eq(risk_area)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RiskArea" do
        expect {
          post :create, :risk_area => valid_attributes
        }.to change(RiskArea, :count).by(1)
      end

      it "assigns a newly created risk_area as @risk_area" do
        post :create, :risk_area => valid_attributes
        assigns(:risk_area).should be_a(RiskArea)
        assigns(:risk_area).should be_persisted
      end

      it "redirects to the created risk_area" do
        post :create, :risk_area => valid_attributes
        response.should redirect_to(RiskArea.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved risk_area as @risk_area" do
        # Trigger the behavior that occurs when invalid params are submitted
        RiskArea.any_instance.stub(:save).and_return(false)
        post :create, :risk_area => {}
        assigns(:risk_area).should be_a_new(RiskArea)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        RiskArea.any_instance.stub(:save).and_return(false)
        post :create, :risk_area => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested risk_area" do
        risk_area = RiskArea.create! valid_attributes
        # Assuming there are no other risk_areas in the database, this
        # specifies that the RiskArea created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        RiskArea.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => risk_area.id, :risk_area => {'these' => 'params'}
      end

      it "assigns the requested risk_area as @risk_area" do
        risk_area = RiskArea.create! valid_attributes
        put :update, :id => risk_area.id, :risk_area => valid_attributes
        assigns(:risk_area).should eq(risk_area)
      end

      it "redirects to the risk_area" do
        risk_area = RiskArea.create! valid_attributes
        put :update, :id => risk_area.id, :risk_area => valid_attributes
        response.should redirect_to(risk_area)
      end
    end

    describe "with invalid params" do
      it "assigns the risk_area as @risk_area" do
        risk_area = RiskArea.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RiskArea.any_instance.stub(:save).and_return(false)
        put :update, :id => risk_area.id.to_s, :risk_area => {}
        assigns(:risk_area).should eq(risk_area)
      end

      it "re-renders the 'edit' template" do
        risk_area = RiskArea.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        RiskArea.any_instance.stub(:save).and_return(false)
        put :update, :id => risk_area.id.to_s, :risk_area => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested risk_area" do
      risk_area = RiskArea.create! valid_attributes
      expect {
        delete :destroy, :id => risk_area.id.to_s
      }.to change(RiskArea, :count).by(-1)
    end

    it "redirects to the risk_areas list" do
      risk_area = RiskArea.create! valid_attributes
      delete :destroy, :id => risk_area.id.to_s
      response.should redirect_to(risk_areas_url)
    end
  end

end
