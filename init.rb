if RAILS_ENV == "test"

require 'active_support/test_case'
  
  ActionController::Base.perform_caching = true
  
  ActionController::Base.send(:include, Cosinux::PageCacheTest::ClassCachingMethods)
  ActiveSupport::TestCase.send(:include, Cosinux::PageCacheTest::IntegrationTestMethods)

  ActionController::Base.send(:cache_store=, Cosinux::FragmentCacheTest::TestStore.new)
  ActiveSupport::TestCase.send(:include, Cosinux::FragmentCacheTest::Assertions)
end

