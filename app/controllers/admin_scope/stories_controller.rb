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
      if story.save
        redirect_to admin_scope_stories_path, notice: "Story was successfully created"
      else
        flash.now[:alert] = "Failed to create story"
        render :new
      end
    end

    def show
    end

    def update
      if story.update(story_params)
        story.save
        respond_with :admin_scope, story, notice: "Story was successfully updated"
      else
        flash.now[:alert] = "Failed to update story"
        render :edit
      end
    end

    def edit
    end

    def destroy
      if story.destroy
        redirect_to admin_scope_stories_path, notice: "Story was successfully deleted"
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
