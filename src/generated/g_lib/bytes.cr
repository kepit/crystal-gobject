module GLib
  class Bytes
    include GObject::WrappedType
    def initialize @g_lib_bytes
    end

    def to_unsafe
      @g_lib_bytes.not_nil!
    end

    def self.new_internal(data, size)
      __return_value = LibGLib.bytes_new(data, UInt64.cast(size))
      GLib::Bytes.new(__return_value)
    end

    def self.new_take(data, size)
      __return_value = LibGLib.bytes_new_take(data, UInt64.cast(size))
      GLib::Bytes.new(__return_value)
    end

    def compare(bytes2)
      __return_value = LibGLib.bytes_compare((to_unsafe as LibGLib::Bytes*), (bytes2.to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def equal(bytes2)
      __return_value = LibGLib.bytes_equal((to_unsafe as LibGLib::Bytes*), (bytes2.to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def data(size)
      __return_value = LibGLib.bytes_get_data((to_unsafe as LibGLib::Bytes*), UInt64.cast(size))
      PointerIterator.new(__return_value) {|__item_75| __item_75 }
    end

    def size
      __return_value = LibGLib.bytes_get_size((to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def hash
      __return_value = LibGLib.bytes_hash((to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def new_from_bytes(offset, length)
      __return_value = LibGLib.bytes_new_from_bytes((to_unsafe as LibGLib::Bytes*), UInt64.cast(offset), UInt64.cast(length))
      GLib::Bytes.new(__return_value)
    end

    def ref
      __return_value = LibGLib.bytes_ref((to_unsafe as LibGLib::Bytes*))
      GLib::Bytes.new(__return_value)
    end

    def unref
      __return_value = LibGLib.bytes_unref((to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def unref_to_array
      __return_value = LibGLib.bytes_unref_to_array((to_unsafe as LibGLib::Bytes*))
      __return_value
    end

    def unref_to_data(size)
      __return_value = LibGLib.bytes_unref_to_data((to_unsafe as LibGLib::Bytes*), size)
      __return_value
    end

  end
end
