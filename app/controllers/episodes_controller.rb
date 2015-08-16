class EpisodesController < ApplicationController

  def index
    @episodes = VersioRac1::Podcast::Episode.find(date_time_from_params.to_time)
  end

  private

  def date_time_from_params
    if params[:year]
      DateTime.parse("#{params[:year]}-#{params[:month]}-#{params[:day]}")
    else
      DateTime.now
    end
  end
end
