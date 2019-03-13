module IEXCloud
  class Response
    extend Forwardable

    attr_reader :raw_response, :errors

    delegate [:body, :status] => :raw_response

    def initialize(raw_response)
      @raw_response = raw_response
    end

    def success?
      (200..299).include?(status)
    end

    def on_error
      yield self unless success?
      self
    end

    def error_message
      body
    end

    def raise_errors
      case status
      when 400
        fail InvalidRequest, body
      when 401
        fail AccessDenied, body
      when 403
        fail InvalidAuth, body
      when 404
        fail ResourceNotFound, body
      when 405
        fail MethodNotAllowed, body
      when (400..499)
        fail ServiceError, body
      when (500..599)
        fail ServerError, body
      end
    end
  end
end
