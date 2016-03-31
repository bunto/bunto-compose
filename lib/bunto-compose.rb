require "bunto-compose/version"
require "bunto-compose/arg_parser"
require "bunto-compose/movement_arg_parser"
require "bunto-compose/file_creator"
require "bunto-compose/file_mover"
require "bunto-compose/file_info"

module Bunto
  module Compose
    DEFAULT_TYPE = "md"
    DEFAULT_LAYOUT = "post"
    DEFAULT_LAYOUT_PAGE = "page"
  end
end

%w{draft post publish unpublish page}.each do |file|
  require File.expand_path("bunto/commands/#{file}.rb", File.dirname(__FILE__))
end
