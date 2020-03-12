module AdminScope
  class StoriesController < AdminScope::BaseController
    expose_decorated(:story)
    expose_decorated(:stories) { Story.all }

    STORY_PARAMS = %i[title content published].freeze

    def index
    end

    def new
    end

    def create
      story.save
      redirect_to admin_scope_stories_path
    end

    def show
    end

    def update
      story.update(story_params)
      story.save

      respond_with :admin_scope, story
    end

    def edit
    end

  def destroy
    if story.destroy
      redirect_to admin_scope_stories_path, notice: "Story was successfuly deleted"
    else
      redirect_to admin_scope_stories_path, alert: "Story wasn't delete"
    end
  end

    private

    def story_params
      params.require(:story).permit(*STORY_PARAMS)
    end
  end
end
