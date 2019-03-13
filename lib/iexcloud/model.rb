require "artisanal-model"
require "dry-types"

module IEXCloud
  class Model
    include Artisanal::Model(symbolize: true, defaults: { type: Types::Any })
  end
end
