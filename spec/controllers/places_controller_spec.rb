require 'rails_helper'

RSpec.describe PlacesController, type: :controller do

  describe "GET #index" do
    it "assigns @places" do
      all_places = Place.all
      get :index
      expect(assigns(:places)).to eq(all_places)
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #new" do
    it "assigns @place" do
      get :new
      expect(assigns(:place)).to be_instance_of(Place)
    end

    it "renders the :new view" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "#show" do
    let(:place) { FactoryGirl.create(:place) }

    before do
      get :show, id: place.id
    end

    it "assigns @place" do
      expect(assigns(:place)).to eq(place)
    end

    it "renders the :show view" do
      expect(response).to render_template(:show)
    end
  end
end
