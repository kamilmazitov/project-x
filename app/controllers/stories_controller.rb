class StoriesController < ApplicationController
  expose_decorated(:story)
  expose_decorated(:stories) { Story.all }

  STORY_PARAMS = %i[title content published].freeze

  def index
  end

  def show
  end

  private

  def story_params
    params.require(:story).permit(*STORY_PARAMS)
  end
end
