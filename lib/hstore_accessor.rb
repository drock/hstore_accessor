require "hstore_accessor/version"
require "hstore_accessor/serialization"
require "hstore_accessor/macro"
require "hstore_accessor/time_helper"
require "active_support"
require "active_record"
require "bigdecimal"

module HstoreAccessor
  extend ActiveSupport::Concern
  include Serialization
  include Macro
end

ActiveSupport.on_load(:active_record) do
  ActiveRecord::Base.send(:include, HstoreAccessor)
end
