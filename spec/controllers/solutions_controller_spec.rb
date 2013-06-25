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

describe SolutionsController do

  # This should return the minimal set of attributes required to create a valid
  # Solution. As you add validations to Solution, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "number" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SolutionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all solutions as @solutions" do
      solution = Solution.create! valid_attributes
      get :index, {}, valid_session
      assigns(:solutions).should eq([solution])
    end
  end

  describe "GET show" do
    it "assigns the requested solution as @solution" do
      solution = Solution.create! valid_attributes
      get :show, {:id => solution.to_param}, valid_session
      assigns(:solution).should eq(solution)
    end
  end

  describe "GET new" do
    it "assigns a new solution as @solution" do
      get :new, {}, valid_session
      assigns(:solution).should be_a_new(Solution)
    end
  end

  describe "GET edit" do
    it "assigns the requested solution as @solution" do
      solution = Solution.create! valid_attributes
      get :edit, {:id => solution.to_param}, valid_session
      assigns(:solution).should eq(solution)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Solution" do
        expect {
          post :create, {:solution => valid_attributes}, valid_session
        }.to change(Solution, :count).by(1)
      end

      it "assigns a newly created solution as @solution" do
        post :create, {:solution => valid_attributes}, valid_session
        assigns(:solution).should be_a(Solution)
        assigns(:solution).should be_persisted
      end

      it "redirects to the created solution" do
        post :create, {:solution => valid_attributes}, valid_session
        response.should redirect_to(Solution.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved solution as @solution" do
        # Trigger the behavior that occurs when invalid params are submitted
        Solution.any_instance.stub(:save).and_return(false)
        post :create, {:solution => { "number" => "invalid value" }}, valid_session
        assigns(:solution).should be_a_new(Solution)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Solution.any_instance.stub(:save).and_return(false)
        post :create, {:solution => { "number" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested solution" do
        solution = Solution.create! valid_attributes
        # Assuming there are no other solutions in the database, this
        # specifies that the Solution created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Solution.any_instance.should_receive(:update_attributes).with({ "number" => "1" })
        put :update, {:id => solution.to_param, :solution => { "number" => "1" }}, valid_session
      end

      it "assigns the requested solution as @solution" do
        solution = Solution.create! valid_attributes
        put :update, {:id => solution.to_param, :solution => valid_attributes}, valid_session
        assigns(:solution).should eq(solution)
      end

      it "redirects to the solution" do
        solution = Solution.create! valid_attributes
        put :update, {:id => solution.to_param, :solution => valid_attributes}, valid_session
        response.should redirect_to(solution)
      end
    end

    describe "with invalid params" do
      it "assigns the solution as @solution" do
        solution = Solution.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Solution.any_instance.stub(:save).and_return(false)
        put :update, {:id => solution.to_param, :solution => { "number" => "invalid value" }}, valid_session
        assigns(:solution).should eq(solution)
      end

      it "re-renders the 'edit' template" do
        solution = Solution.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Solution.any_instance.stub(:save).and_return(false)
        put :update, {:id => solution.to_param, :solution => { "number" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested solution" do
      solution = Solution.create! valid_attributes
      expect {
        delete :destroy, {:id => solution.to_param}, valid_session
      }.to change(Solution, :count).by(-1)
    end

    it "redirects to the solutions list" do
      solution = Solution.create! valid_attributes
      delete :destroy, {:id => solution.to_param}, valid_session
      response.should redirect_to(solutions_url)
    end
  end

end
