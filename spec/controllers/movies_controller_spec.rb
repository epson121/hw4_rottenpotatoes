require 'spec_helper'

describe MoviesController do
  describe 'showByDirectorName' do
    it 'should call the model method that performs searching by director name and display results in a view' do
      match :showByDirectorName
    end
  end
end
