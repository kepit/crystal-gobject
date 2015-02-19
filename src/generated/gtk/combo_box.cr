require "./bin"

module Gtk
  class ComboBox < Bin
    def initialize @gtk_combo_box
    end

    def to_unsafe
      @gtk_combo_box.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellEditable
    # Implements CellLayout

















    def self.new_internal
      __return_value = LibGtk.combo_box_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area)
      __return_value = LibGtk.combo_box_new_with_area((area.to_unsafe as LibGtk::CellArea*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_area_and_entry(area)
      __return_value = LibGtk.combo_box_new_with_area_and_entry((area.to_unsafe as LibGtk::CellArea*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_entry
      __return_value = LibGtk.combo_box_new_with_entry
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model)
      __return_value = LibGtk.combo_box_new_with_model((model.to_unsafe as LibGtk::TreeModel*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_model_and_entry(model)
      __return_value = LibGtk.combo_box_new_with_model_and_entry((model.to_unsafe as LibGtk::TreeModel*))
      Gtk::Widget.new(__return_value)
    end

    def active
      __return_value = LibGtk.combo_box_get_active((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def active_id
      __return_value = LibGtk.combo_box_get_active_id((to_unsafe as LibGtk::ComboBox*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

    def active_iter(iter)
      __return_value = LibGtk.combo_box_get_active_iter((to_unsafe as LibGtk::ComboBox*), iter)
      __return_value
    end

    def add_tearoffs
      __return_value = LibGtk.combo_box_get_add_tearoffs((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def button_sensitivity
      __return_value = LibGtk.combo_box_get_button_sensitivity((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def column_span_column
      __return_value = LibGtk.combo_box_get_column_span_column((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def entry_text_column
      __return_value = LibGtk.combo_box_get_entry_text_column((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def focus_on_click
      __return_value = LibGtk.combo_box_get_focus_on_click((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def has_entry
      __return_value = LibGtk.combo_box_get_has_entry((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def id_column
      __return_value = LibGtk.combo_box_get_id_column((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def model
      __return_value = LibGtk.combo_box_get_model((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def popup_accessible
      __return_value = LibGtk.combo_box_get_popup_accessible((to_unsafe as LibGtk::ComboBox*))
      Atk::Object.new(__return_value)
    end

    def popup_fixed_width
      __return_value = LibGtk.combo_box_get_popup_fixed_width((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def row_span_column
      __return_value = LibGtk.combo_box_get_row_span_column((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def title
      __return_value = LibGtk.combo_box_get_title((to_unsafe as LibGtk::ComboBox*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def wrap_width
      __return_value = LibGtk.combo_box_get_wrap_width((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def popdown
      __return_value = LibGtk.combo_box_popdown((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def popup
      __return_value = LibGtk.combo_box_popup((to_unsafe as LibGtk::ComboBox*))
      __return_value
    end

    def popup_for_device(device)
      __return_value = LibGtk.combo_box_popup_for_device((to_unsafe as LibGtk::ComboBox*), (device.to_unsafe as LibGdk::Device*))
      __return_value
    end

    def active=(index)
      __return_value = LibGtk.combo_box_set_active((to_unsafe as LibGtk::ComboBox*), Int32.cast(index))
      __return_value
    end

    def active_id=(active_id)
      __return_value = LibGtk.combo_box_set_active_id((to_unsafe as LibGtk::ComboBox*), active_id && active_id)
      __return_value
    end

    def active_iter=(iter)
      __return_value = LibGtk.combo_box_set_active_iter((to_unsafe as LibGtk::ComboBox*), iter && (iter.to_unsafe as LibGtk::TreeIter*))
      __return_value
    end

    def add_tearoffs=(add_tearoffs)
      __return_value = LibGtk.combo_box_set_add_tearoffs((to_unsafe as LibGtk::ComboBox*), Bool.cast(add_tearoffs))
      __return_value
    end

    def button_sensitivity=(sensitivity)
      __return_value = LibGtk.combo_box_set_button_sensitivity((to_unsafe as LibGtk::ComboBox*), sensitivity)
      __return_value
    end

    def column_span_column=(column_span)
      __return_value = LibGtk.combo_box_set_column_span_column((to_unsafe as LibGtk::ComboBox*), Int32.cast(column_span))
      __return_value
    end

    def entry_text_column=(text_column)
      __return_value = LibGtk.combo_box_set_entry_text_column((to_unsafe as LibGtk::ComboBox*), Int32.cast(text_column))
      __return_value
    end

    def focus_on_click=(focus_on_click)
      __return_value = LibGtk.combo_box_set_focus_on_click((to_unsafe as LibGtk::ComboBox*), Bool.cast(focus_on_click))
      __return_value
    end

    def id_column=(id_column)
      __return_value = LibGtk.combo_box_set_id_column((to_unsafe as LibGtk::ComboBox*), Int32.cast(id_column))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.combo_box_set_model((to_unsafe as LibGtk::ComboBox*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def popup_fixed_width=(fixed)
      __return_value = LibGtk.combo_box_set_popup_fixed_width((to_unsafe as LibGtk::ComboBox*), Bool.cast(fixed))
      __return_value
    end

    def set_row_separator_func(func, data, destroy)
      __return_value = LibGtk.combo_box_set_row_separator_func((to_unsafe as LibGtk::ComboBox*), func, data && data, destroy && destroy)
      __return_value
    end

    def row_span_column=(row_span)
      __return_value = LibGtk.combo_box_set_row_span_column((to_unsafe as LibGtk::ComboBox*), Int32.cast(row_span))
      __return_value
    end

    def title=(title)
      __return_value = LibGtk.combo_box_set_title((to_unsafe as LibGtk::ComboBox*), title)
      __return_value
    end

    def wrap_width=(width)
      __return_value = LibGtk.combo_box_set_wrap_width((to_unsafe as LibGtk::ComboBox*), Int32.cast(width))
      __return_value
    end

  end
end

