module Gio
  class FilenameCompleter < GObject::Object
    def initialize(@gio_filename_completer)
    end

    def to_unsafe
      @gio_filename_completer.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.filename_completer_new
      Gio::FilenameCompleter.new(__return_value)
    end

    def completion_suffix(initial_text)
      __return_value = LibGio.filename_completer_get_completion_suffix((to_unsafe as LibGio::FilenameCompleter*), initial_text)
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def completions(initial_text)
      __return_value = LibGio.filename_completer_get_completions((to_unsafe as LibGio::FilenameCompleter*), initial_text)
      PointerIterator.new(__return_value) {|__item_56| (raise "Expected string but got null" unless __item_56; String.new(__item_56)) }
    end

    def dirs_only=(dirs_only)
      __return_value = LibGio.filename_completer_set_dirs_only((to_unsafe as LibGio::FilenameCompleter*), dirs_only)
      __return_value
    end

    alias GotCompletionDataSignal = FilenameCompleter -> 
    def on_got_completion_data(&__block : GotCompletionDataSignal)
      __callback = ->(_arg0 : LibGio::FilenameCompleter*) {
       __return_value = __block.call(FilenameCompleter.new(_arg0))
       __return_value
      }
      connect("got-completion-data", __callback)
    end

  end
end

