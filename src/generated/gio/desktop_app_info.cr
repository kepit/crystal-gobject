module Gio
  class DesktopAppInfo < GObject::Object
    def initialize(@gio_desktop_app_info)
    end

    def to_unsafe
      @gio_desktop_app_info.not_nil!
    end

    # Implements AppInfo

    def self.new_internal(desktop_id)
      __return_value = LibGio.desktop_app_info_new(desktop_id)
      Gio::DesktopAppInfo.new(__return_value)
    end

    def self.new_from_filename(filename)
      __return_value = LibGio.desktop_app_info_new_from_filename(filename)
      Gio::DesktopAppInfo.new(__return_value)
    end

    def self.new_from_keyfile(key_file)
      __return_value = LibGio.desktop_app_info_new_from_keyfile((key_file.to_unsafe as LibGLib::KeyFile*))
      Gio::DesktopAppInfo.new(__return_value)
    end

    def self.implementations(interface)
      __return_value = LibGio.desktop_app_info_get_implementations(interface)
      __return_value
    end

    def self.search(search_string)
      __return_value = LibGio.desktop_app_info_search(search_string)
      PointerIterator.new(__return_value) {|__item_23| PointerIterator.new(__item_23) {|__item_31| (raise "Expected string but got null" unless __item_31; String.new(__item_31)) } }
    end

    def self.set_desktop_env(desktop_env)
      __return_value = LibGio.desktop_app_info_set_desktop_env(desktop_env)
      __return_value
    end

    def action_name(action_name)
      __return_value = LibGio.desktop_app_info_get_action_name((to_unsafe as LibGio::DesktopAppInfo*), action_name)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def boolean(key)
      __return_value = LibGio.desktop_app_info_get_boolean((to_unsafe as LibGio::DesktopAppInfo*), key)
      __return_value
    end

    def categories
      __return_value = LibGio.desktop_app_info_get_categories((to_unsafe as LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def filename
      __return_value = LibGio.desktop_app_info_get_filename((to_unsafe as LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def generic_name
      __return_value = LibGio.desktop_app_info_get_generic_name((to_unsafe as LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def is_hidden
      __return_value = LibGio.desktop_app_info_get_is_hidden((to_unsafe as LibGio::DesktopAppInfo*))
      __return_value
    end

    def keywords
      __return_value = LibGio.desktop_app_info_get_keywords((to_unsafe as LibGio::DesktopAppInfo*))
      PointerIterator.new(__return_value) {|__item_4| (raise "Expected string but got null" unless __item_4; String.new(__item_4)) }
    end

    def nodisplay
      __return_value = LibGio.desktop_app_info_get_nodisplay((to_unsafe as LibGio::DesktopAppInfo*))
      __return_value
    end

    def show_in(desktop_env)
      __return_value = LibGio.desktop_app_info_get_show_in((to_unsafe as LibGio::DesktopAppInfo*), desktop_env && desktop_env)
      __return_value
    end

    def startup_wm_class
      __return_value = LibGio.desktop_app_info_get_startup_wm_class((to_unsafe as LibGio::DesktopAppInfo*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def string(key)
      __return_value = LibGio.desktop_app_info_get_string((to_unsafe as LibGio::DesktopAppInfo*), key)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def has_key(key)
      __return_value = LibGio.desktop_app_info_has_key((to_unsafe as LibGio::DesktopAppInfo*), key)
      __return_value
    end

    def launch_action(action_name, launch_context)
      __return_value = LibGio.desktop_app_info_launch_action((to_unsafe as LibGio::DesktopAppInfo*), action_name, launch_context && (launch_context.to_unsafe as LibGio::AppLaunchContext*))
      __return_value
    end

    def launch_uris_as_manager(uris, launch_context, spawn_flags, user_setup : LibGLib::SpawnChildSetupFunc?, user_setup_data, pid_callback : LibGio::DesktopAppLaunchCallback?, pid_callback_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.desktop_app_info_launch_uris_as_manager((to_unsafe as LibGio::DesktopAppInfo*), uris, launch_context && (launch_context.to_unsafe as LibGio::AppLaunchContext*), spawn_flags, user_setup && user_setup, user_setup_data && user_setup_data, pid_callback && pid_callback, pid_callback_data && pid_callback_data, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def list_actions
      __return_value = LibGio.desktop_app_info_list_actions((to_unsafe as LibGio::DesktopAppInfo*))
      PointerIterator.new(__return_value) {|__item_99| (raise "Expected string but got null" unless __item_99; String.new(__item_99)) }
    end

  end
end

