require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
    
    before(:each) do
        Movie.create! :title => "Chicken Run"
    end
    
    describe 'destroy' do
        it 'should delete the movie' do
            m = Movie.find_by! title: 'Chicken Run'
            #m = Movie.first!
            #puts(m.inspect)
            #get :show, :id => m.id
            #click 'Delete'
            #expect(page.body).to not_include(m.title)
            post :destroy, :id => m.id
            m = Movie.find_by title: 'Chicken Run'
            expect(m == nil)
        end
    end
end