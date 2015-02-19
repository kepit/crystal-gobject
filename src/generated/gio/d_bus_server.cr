module Gio
  class DBusServer < GObject::Object
    def initialize @gio_d_bus_server
    end

    def to_unsafe
      @gio_d_bus_server.not_nil!
    end

    # Implements Initable






    def self.new_sync(address, flags, guid, observer, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_server_new_sync(address, flags, guid, observer && (observer.to_unsafe as LibGio::DBusAuthObserver*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusServer.new(__return_value)
    end

    def client_address
      __return_value = LibGio.d_bus_server_get_client_address((to_unsafe as LibGio::DBusServer*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def flags
      __return_value = LibGio.d_bus_server_get_flags((to_unsafe as LibGio::DBusServer*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_server_get_guid((to_unsafe as LibGio::DBusServer*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def is_active
      __return_value = LibGio.d_bus_server_is_active((to_unsafe as LibGio::DBusServer*))
      __return_value
    end

    def start
      __return_value = LibGio.d_bus_server_start((to_unsafe as LibGio::DBusServer*))
      __return_value
    end

    def stop
      __return_value = LibGio.d_bus_server_stop((to_unsafe as LibGio::DBusServer*))
      __return_value
    end

  end
end

