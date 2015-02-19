require "./bin"

module Gtk
  class Button < Bin
    def initialize @gtk_button
    end

    def to_unsafe
      @gtk_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable

    def focus_on_click=(__value)
      LibGtk.button_set_focus_on_click((to_unsafe as LibGtk::Button*), Bool.cast(__value))
    end

    def image=(__value)
      LibGtk.button_set_image((to_unsafe as LibGtk::Button*), __value)
    end

    def image_position=(__value)
      LibGtk.button_set_image_position((to_unsafe as LibGtk::Button*), __value)
    end


    def relief=(__value)
      LibGtk.button_set_relief((to_unsafe as LibGtk::Button*), __value)
    end



    def xalign=(__value)
      LibGtk.button_set_xalign((to_unsafe as LibGtk::Button*), Float32.cast(__value))
    end

    def yalign=(__value)
      LibGtk.button_set_yalign((to_unsafe as LibGtk::Button*), Float32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.button_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_name(icon_name, size)
      __return_value = LibGtk.button_new_from_icon_name(icon_name, Int32.cast(size))
      Gtk::Widget.new(__return_value)
    end

    def self.new_from_stock(stock_id)
      __return_value = LibGtk.button_new_from_stock(stock_id)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_label(label)
      __return_value = LibGtk.button_new_with_label(label)
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_mnemonic(label)
      __return_value = LibGtk.button_new_with_mnemonic(label)
      Gtk::Widget.new(__return_value)
    end

    def clicked
      __return_value = LibGtk.button_clicked((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def enter
      __return_value = LibGtk.button_enter((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def alignment(xalign, yalign)
      __return_value = LibGtk.button_get_alignment((to_unsafe as LibGtk::Button*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def always_show_image
      __return_value = LibGtk.button_get_always_show_image((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def event_window
      __return_value = LibGtk.button_get_event_window((to_unsafe as LibGtk::Button*))
      Gdk::Window.new(__return_value)
    end

    def focus_on_click
      __return_value = LibGtk.button_get_focus_on_click((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def image
      __return_value = LibGtk.button_get_image((to_unsafe as LibGtk::Button*))
      Gtk::Widget.new(__return_value)
    end

    def image_position
      __return_value = LibGtk.button_get_image_position((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def label
      __return_value = LibGtk.button_get_label((to_unsafe as LibGtk::Button*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def relief
      __return_value = LibGtk.button_get_relief((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def use_stock
      __return_value = LibGtk.button_get_use_stock((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def use_underline
      __return_value = LibGtk.button_get_use_underline((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def leave
      __return_value = LibGtk.button_leave((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def pressed
      __return_value = LibGtk.button_pressed((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def released
      __return_value = LibGtk.button_released((to_unsafe as LibGtk::Button*))
      __return_value
    end

    def alignment=(xalign, yalign)
      __return_value = LibGtk.button_set_alignment((to_unsafe as LibGtk::Button*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def always_show_image=(always_show)
      __return_value = LibGtk.button_set_always_show_image((to_unsafe as LibGtk::Button*), Bool.cast(always_show))
      __return_value
    end

    def focus_on_click=(focus_on_click)
      __return_value = LibGtk.button_set_focus_on_click((to_unsafe as LibGtk::Button*), Bool.cast(focus_on_click))
      __return_value
    end

    def image=(image)
      __return_value = LibGtk.button_set_image((to_unsafe as LibGtk::Button*), (image.to_unsafe as LibGtk::Widget*))
      __return_value
    end

    def image_position=(position)
      __return_value = LibGtk.button_set_image_position((to_unsafe as LibGtk::Button*), position)
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.button_set_label((to_unsafe as LibGtk::Button*), label)
      __return_value
    end

    def relief=(relief)
      __return_value = LibGtk.button_set_relief((to_unsafe as LibGtk::Button*), relief)
      __return_value
    end

    def use_stock=(use_stock)
      __return_value = LibGtk.button_set_use_stock((to_unsafe as LibGtk::Button*), Bool.cast(use_stock))
      __return_value
    end

    def use_underline=(use_underline)
      __return_value = LibGtk.button_set_use_underline((to_unsafe as LibGtk::Button*), Bool.cast(use_underline))
      __return_value
    end

  end
end
