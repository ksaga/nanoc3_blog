# encoding: utf-8

module Nanoc::Filters
  class WikiCreole < Nanoc::Filter
    identifier :wikicreole

    # Runs the content through Wiki_Creole
    #
    # @param [String] content The content to filter
    #
    # @return [String] The filtered content
    def run(content, params={})
      ::WikiCreole.creole_parse(content, params.merge(:keep_line_break => true))
    end

  end
end
