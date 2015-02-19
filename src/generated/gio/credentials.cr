module Gio
  class Credentials < GObject::Object
    def initialize @gio_credentials
    end

    def to_unsafe
      @gio_credentials.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.credentials_new
      Gio::Credentials.new(__return_value)
    end

    def unix_pid
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_get_unix_pid((to_unsafe as LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unix_user
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_get_unix_user((to_unsafe as LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def is_same_user(other_credentials)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_is_same_user((to_unsafe as LibGio::Credentials*), (other_credentials.to_unsafe as LibGio::Credentials*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def native=(native_type, native)
      __return_value = LibGio.credentials_set_native((to_unsafe as LibGio::Credentials*), native_type, native)
      __return_value
    end

    def unix_user=(uid)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.credentials_set_unix_user((to_unsafe as LibGio::Credentials*), UInt32.cast(uid), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def to_string
      __return_value = LibGio.credentials_to_string((to_unsafe as LibGio::Credentials*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

  end
end
