# Glamazon - Couch ORM
# Stevie Graham
# Picklive

require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require :default
require 'digest/sha2'

Dir.glob(File.join File.dirname(__FILE__), 'glamazon', '**', '*.rb').each { |lib| require lib }

Object.class_eval { def tap() yield self; self; end } unless respond_to? :tap
Object.class_eval { def try(method) send method if respond_to? method; end } unless respond_to? :try

Glamazon::Base.module_eval do
  include Glamazon::Attributes
  include Glamazon::JSON
end