require "iexcloud/version"
require "dry/configurable"
require "iexcloud/api"
require "iexcloud/errors"
require "iexcloud/models"

module IEXCloud
  extend Dry::Configurable
  setting :api_version, "beta"
  setting :endpoint, ""
  setting :proxy

  autoload :Client,   "iexcloud/client"
  autoload :Model,    "iexcloud/model"
  autoload :Response, "iexcloud/response"
  autoload :Request,  "iexcloud/request"
  autoload :Types,    "iexcloud/types"

  def self.client
    @client ||= Client.new
  end
end
