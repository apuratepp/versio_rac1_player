class EpisodesController < ApplicationController
  def index
    @episodes = episodes
  end

  private

  def date_params
    params[:date]
  end

  def episodes
    if date_params
      date = DateTime.parse(date_params.map {|k,v| v}.join("-"))
      VersioRac1::Podcast::Episode.find(date.to_time)
    else
      VersioRac1::Podcast::Episode.all
    end
  end
end
