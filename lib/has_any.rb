# frozen_string_literal: true

require "ruby-next"

require "ruby-next/language/setup"
RubyNext::Language.setup_gem_load_path(transpile: true)

require "has_any/version"
require "has_any/railtie" if defined?(Rails::Railtie)
