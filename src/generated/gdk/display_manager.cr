module Gdk
  class DisplayManager < GObject::Object
    def initialize @gdk_display_manager
    end

    def to_unsafe
      @gdk_display_manager.not_nil!
    end

    def default_display=(__value)
      LibGdk.display_manager_set_default_display((to_unsafe as LibGdk::DisplayManager*), __value)
    end

    def self.get
      __return_value = LibGdk.display_manager_get
      Gdk::DisplayManager.new(__return_value)
    end

    def default_display
      __return_value = LibGdk.display_manager_get_default_display((to_unsafe as LibGdk::DisplayManager*))
      Gdk::Display.new(__return_value) if __return_value
    end

    def list_displays
      __return_value = LibGdk.display_manager_list_displays((to_unsafe as LibGdk::DisplayManager*))
      __return_value
    end

    def open_display(name)
      __return_value = LibGdk.display_manager_open_display((to_unsafe as LibGdk::DisplayManager*), name)
      Gdk::Display.new(__return_value) if __return_value
    end

    def default_display=(display)
      __return_value = LibGdk.display_manager_set_default_display((to_unsafe as LibGdk::DisplayManager*), (display.to_unsafe as LibGdk::Display*))
      __return_value
    end

  end
end
