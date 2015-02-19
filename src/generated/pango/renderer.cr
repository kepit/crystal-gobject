module Pango
  class Renderer < GObject::Object
    def initialize @pango_renderer
    end

    def to_unsafe
      @pango_renderer.not_nil!
    end

    def activate
      __return_value = LibPango.renderer_activate((to_unsafe as LibPango::Renderer*))
      __return_value
    end

    def deactivate
      __return_value = LibPango.renderer_deactivate((to_unsafe as LibPango::Renderer*))
      __return_value
    end

    def draw_error_underline(x, y, width, height)
      __return_value = LibPango.renderer_draw_error_underline((to_unsafe as LibPango::Renderer*), Int32.cast(x), Int32.cast(y), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def draw_glyph(font, glyph, x, y)
      __return_value = LibPango.renderer_draw_glyph((to_unsafe as LibPango::Renderer*), (font.to_unsafe as LibPango::Font*), UInt32.cast(glyph), Float64.cast(x), Float64.cast(y))
      __return_value
    end

    def draw_glyph_item(text, glyph_item, x, y)
      __return_value = LibPango.renderer_draw_glyph_item((to_unsafe as LibPango::Renderer*), text, (glyph_item.to_unsafe as LibPango::GlyphItem*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def draw_glyphs(font, glyphs, x, y)
      __return_value = LibPango.renderer_draw_glyphs((to_unsafe as LibPango::Renderer*), (font.to_unsafe as LibPango::Font*), (glyphs.to_unsafe as LibPango::GlyphString*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def draw_layout(layout, x, y)
      __return_value = LibPango.renderer_draw_layout((to_unsafe as LibPango::Renderer*), (layout.to_unsafe as LibPango::Layout*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def draw_layout_line(line, x, y)
      __return_value = LibPango.renderer_draw_layout_line((to_unsafe as LibPango::Renderer*), (line.to_unsafe as LibPango::LayoutLine*), Int32.cast(x), Int32.cast(y))
      __return_value
    end

    def draw_rectangle(part, x, y, width, height)
      __return_value = LibPango.renderer_draw_rectangle((to_unsafe as LibPango::Renderer*), part, Int32.cast(x), Int32.cast(y), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def draw_trapezoid(part, y1, x11, x21, y2, x12, x22)
      __return_value = LibPango.renderer_draw_trapezoid((to_unsafe as LibPango::Renderer*), part, Float64.cast(y1), Float64.cast(x11), Float64.cast(x21), Float64.cast(y2), Float64.cast(x12), Float64.cast(x22))
      __return_value
    end

    def color(part)
      __return_value = LibPango.renderer_get_color((to_unsafe as LibPango::Renderer*), part)
      Pango::Color.new(__return_value)
    end

    def layout
      __return_value = LibPango.renderer_get_layout((to_unsafe as LibPango::Renderer*))
      Pango::Layout.new(__return_value)
    end

    def layout_line
      __return_value = LibPango.renderer_get_layout_line((to_unsafe as LibPango::Renderer*))
      Pango::LayoutLine.new(__return_value)
    end

    def matrix
      __return_value = LibPango.renderer_get_matrix((to_unsafe as LibPango::Renderer*))
      Pango::Matrix.new(__return_value)
    end

    def part_changed(part)
      __return_value = LibPango.renderer_part_changed((to_unsafe as LibPango::Renderer*), part)
      __return_value
    end

    def color=(part, color)
      __return_value = LibPango.renderer_set_color((to_unsafe as LibPango::Renderer*), part, (color.to_unsafe as LibPango::Color*))
      __return_value
    end

    def matrix=(matrix)
      __return_value = LibPango.renderer_set_matrix((to_unsafe as LibPango::Renderer*), (matrix.to_unsafe as LibPango::Matrix*))
      __return_value
    end

  end
end
