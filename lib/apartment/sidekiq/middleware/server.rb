module Apartment::Sidekiq::Middleware
  class Server
    def call(worker_class, item, queue)
      Apartment::Tenant.process(item['apartment']) do
        yield
      end
    end
  end
end