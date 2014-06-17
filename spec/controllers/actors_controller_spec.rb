#require 'rails_helper'
require 'spec_helper'

describe ActorsController do

  context "POST create" do
    context "has no Validation errors" do    

    let(:new_actor){FactoryGirl.attributes_for(:actor)}

      it "creates actor entry" do
        post :create, {actor: new_actor}
        expect(response).to redirect_to(actors_path)

      end
    end

    context "has Validation errors" do

      it "Invalidates input" do
        actor1=FactoryGirl.create(:actor)
        actor2=FactoryGirl.attributes_for(:actor, name: actor1.name)
        post :create, {actor: actor2}
        expect(response).to render_template("new")
      end 
    end
  end

  context "GET new" do
    it "Displays new form for adding actors" do
      
    end   
  end

  context "GET edit" do
    it "Fetches specified actor in an editable form" do
      actor= FactoryGirl.create(:actor)
      get :edit, {id: actor.id}
      expect(response).to render_template("edit")
    end
  end

  context "PUT update" do

    let(:actor){FactoryGirl.create(:actor)}

    context "has no Validation errors" do
      it "creates actor entry" do
        patch :update, {id: actor.id, actor: {name: Faker::Name.name}}
        expect(response).to redirect_to(actor_path)
      end
    end

    context "has Validation errors" do

      xit "Invalidates input" do
        actor2.
        patch :update, {id: actor.id, actor: {name: actor.name}}
        expect(response).to render_template("new")
      end 
    end
  end

  context "DELETE delete" do

    let(:actor){FactoryGirl.create(:actor, name: "Actor_1")}

    it "Destroys an actor succesfully" do
      delete :destroy, {id: actor.id}
      expect(response).to redirect_to(actors_path)
    end
 
  end

  context "GET index" do
    it "lists all actors" do
      get :index
      expect(response).to render_template("index")
    end
  end

  context "GET show" do
    let(:actor){FactoryGirl.create(:actor, name: "Actor_1")}
    
    it "shows the details of an actor" do
      get :show, {id: actor.id}
      expect(response).to render_template("show")
    end

  end

end
