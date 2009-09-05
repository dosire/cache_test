if RAILS_ENV == "test"

require 'active_support/test_case'

  ActionController::Base.perform_caching = true
  ActionController::Base.send(:include, Cosinux::PageCacheTest::ClassCachingMethods)
  ActiveSupport::TestCase.send(:include, Cosinux::PageCacheTest::IntegrationTestMethods)
  
end

