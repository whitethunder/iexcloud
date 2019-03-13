module IEXCloud
  InvalidRequest = Class.new(StandardError)
  AccessDenied = Class.new(StandardError)
  InvalidAuth = Class.new(StandardError)
  ResourceNotFound = Class.new(StandardError)
  MethodNotAllowed = Class.new(StandardError)
  ServiceError = Class.new(StandardError)
  ServerError = Class.new(StandardError)
end
