module CcMenu
  class Status
    ValidStatuses   = [:success, :failed]
    ValidActivities = [:sleeping, :building]

    def self.set(args = {})
      unless ValidStatuses.include?(args[:status])
        raise "Invalid Status provided. Has to be either :success or :failed"
      end

      unless ValidActivities.include?(args[:activity])
        raise "Invalid Activity provided. Has to be either :building or :sleeping"
      end

      lastBuildStatus = args[:status].capitalize.to_s
      activity        = args[:activity].capitalize.to_s

      Rails.cache.write("CCMENU_BUILD_STATUS", lastBuildStatus)
      Rails.cache.write("CCMENU_ACTIVITY", activity)
    end

    def self.url
      Rails.cache.read("CCMENU_WEB_URL")
    end

    def self.name
      Rails.cache.read("CCMENU_NAME") || Rails.application.class.parent_name
    end


    def self.build_status
      Rails.cache.read("CCMENU_BUILD_STATUS") || "Success"
    end

    def self.activity
      Rails.cache.read("CCMENU_ACTIVITY") || "Sleeping"
    end

  end
end
