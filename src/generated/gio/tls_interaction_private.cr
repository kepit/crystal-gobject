module Gio
  class TlsInteractionPrivate
    include GObject::WrappedType

    def initialize(@gio_tls_interaction_private)
    end

    def to_unsafe
      @gio_tls_interaction_private.not_nil!
    end

  end
end

