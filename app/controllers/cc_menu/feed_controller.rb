require_dependency "cc_menu/application_controller"

module CcMenu
  class FeedController < ApplicationController
    def index
      render :xml => %{
        <Projects>
          <Project webUrl="#{CcMenu::Status.url || root_url}" name="#{CcMenu::Status.name}" lastBuildStatus="#{CcMenu::Status.build_status}" lastBuildTime="#{Time.now}" activity="#{CcMenu::Status.activity}"/>
        </Projects>
      }
    end
  end
end
