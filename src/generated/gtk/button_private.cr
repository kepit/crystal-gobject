module Gtk
  class ButtonPrivate
    include GObject::WrappedType

    def initialize(@gtk_button_private)
    end

    def to_unsafe
      @gtk_button_private.not_nil!
    end

  end
end

