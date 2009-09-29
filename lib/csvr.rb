require 'hirb'
require 'csv'

module Csvr
  VERSION = '0.1.0'

  def view(path)
    puts render(normalize(CSV.read(path)))
  end

  def render(array)
    Hirb::Helpers::Table.render(array)
  end

  def normalize(array)
    max_array_size = array.inject(0) do |size, ary|
      [ary.size, size].max
    end

    array.map do |ary|
      if ary.size < max_array_size
        ary.fill(nil, (ary.size)..(max_array_size - 1))
      else
        ary
      end
    end
  end

  module_function :view, :render, :normalize
end
