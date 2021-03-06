module Gio
  module ProxyResolver
    def self.default
      __return_value = LibGio.proxy_resolver_get_default
      __return_value
    end

    def supported?
      __return_value = LibGio.proxy_resolver_is_supported((to_unsafe as LibGio::ProxyResolver*))
      __return_value
    end

    def lookup(uri, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_resolver_lookup((to_unsafe as LibGio::ProxyResolver*), uri, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_96| (raise "Expected string but got null" unless __item_96; String.new(__item_96)) }
    end

    def lookup_async(uri, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.proxy_resolver_lookup_async((to_unsafe as LibGio::ProxyResolver*), uri, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def lookup_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.proxy_resolver_lookup_finish((to_unsafe as LibGio::ProxyResolver*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_42| (raise "Expected string but got null" unless __item_42; String.new(__item_42)) }
    end

  end
end

