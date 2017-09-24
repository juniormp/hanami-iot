require 'spec_helper'
require_relative '../../../../apps/web/controllers/iot/index'

describe Web::Controllers::Iot::Index do
  let(:action) { Web::Controllers::Iot::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
