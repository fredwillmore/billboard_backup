class VisualizationsController < ApplicationController

  def multi_line_chart
    @year = visualizations_params[:year].to_i
    @chart_length = visualizations_params[:chart_length]
    respond_to do |format|
      format.html
      format.json do
        if use_flat_file
          render json: File.read("db/seeds/data/billboard/chart_tracks/#{@year}.json") rescue {}
        else
          start_date = Date.new(@year)
          end_date = Date.new(@year+1)-1
          render json: BillboardTrack.charting_tracks(start_date, end_date)
        end
      end
    end
  end

  private

  def visualizations_params
    params[:use_flat_file] ||= use_flat_file
    params[:year] ||= 1977
    params[:chart_length] ||= 40

    params
  end
end
