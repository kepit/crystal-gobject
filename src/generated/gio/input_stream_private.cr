module Gio
  class InputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_input_stream_private)
    end

    def to_unsafe
      @gio_input_stream_private.not_nil!
    end

  end
end

