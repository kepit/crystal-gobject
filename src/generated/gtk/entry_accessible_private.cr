module Gtk
  class EntryAccessiblePrivate
    include GObject::WrappedType

    def initialize(@gtk_entry_accessible_private)
    end

    def to_unsafe
      @gtk_entry_accessible_private.not_nil!
    end

  end
end

