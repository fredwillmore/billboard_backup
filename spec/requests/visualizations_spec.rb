require 'rails_helper'

describe "Visualizations" do
  describe "GET /multi_line_chart" do
    it "works right" do
      get '/multi_line_chart'

      expect(response).to be_successful
    end
  end
end
