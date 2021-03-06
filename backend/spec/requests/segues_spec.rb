 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/segues", type: :request do
  # Segue. As you add validations to Segue, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Segue.create! valid_attributes
      get segues_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      segue = Segue.create! valid_attributes
      get segue_url(segue)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_segue_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      segue = Segue.create! valid_attributes
      get edit_segue_url(segue)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Segue" do
        expect {
          post segues_url, params: { segue: valid_attributes }
        }.to change(Segue, :count).by(1)
      end

      it "redirects to the created segue" do
        post segues_url, params: { segue: valid_attributes }
        expect(response).to redirect_to(segue_url(Segue.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Segue" do
        expect {
          post segues_url, params: { segue: invalid_attributes }
        }.to change(Segue, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post segues_url, params: { segue: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested segue" do
        segue = Segue.create! valid_attributes
        patch segue_url(segue), params: { segue: new_attributes }
        segue.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the segue" do
        segue = Segue.create! valid_attributes
        patch segue_url(segue), params: { segue: new_attributes }
        segue.reload
        expect(response).to redirect_to(segue_url(segue))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        segue = Segue.create! valid_attributes
        patch segue_url(segue), params: { segue: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested segue" do
      segue = Segue.create! valid_attributes
      expect {
        delete segue_url(segue)
      }.to change(Segue, :count).by(-1)
    end

    it "redirects to the segues list" do
      segue = Segue.create! valid_attributes
      delete segue_url(segue)
      expect(response).to redirect_to(segues_url)
    end
  end
end
