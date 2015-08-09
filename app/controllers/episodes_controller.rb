class EpisodesController < ApplicationController
  def index
    @episodes = VersioRac1::Podcast::Episode.all
  end
end
