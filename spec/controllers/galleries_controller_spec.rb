require 'rails_helper'

RSpec.describe GalleriesController, type: :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      Gallery.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      gallery = Gallery.create! valid_attributes
      get :show, params: {id: gallery.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      gallery = Gallery.create! valid_attributes
      get :edit, params: {id: gallery.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Gallery" do
        expect {
          post :create, params: {gallery: valid_attributes}, session: valid_session
        }.to change(Gallery, :count).by(1)
      end

      it "redirects to the created gallery" do
        post :create, params: {gallery: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Gallery.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {gallery: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, params: {id: gallery.to_param, gallery: new_attributes}, session: valid_session
        gallery.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the gallery" do
        gallery = Gallery.create! valid_attributes
        put :update, params: {id: gallery.to_param, gallery: valid_attributes}, session: valid_session
        expect(response).to redirect_to(gallery)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        gallery = Gallery.create! valid_attributes
        put :update, params: {id: gallery.to_param, gallery: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested gallery" do
      gallery = Gallery.create! valid_attributes
      expect {
        delete :destroy, params: {id: gallery.to_param}, session: valid_session
      }.to change(Gallery, :count).by(-1)
    end

    it "redirects to the galleries list" do
      gallery = Gallery.create! valid_attributes
      delete :destroy, params: {id: gallery.to_param}, session: valid_session
      expect(response).to redirect_to(galleries_url)
    end
  end

end
