# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'HTTP response status codes' do
    context 'when accessing "/"' do
      before { get :index }

      it 'should give me a code 200' do
        should respond_with(200)
      end
    end
  end

  describe 'HTTP Methods' do
    context 'when #index is accessed' do
      before { get :index }

      it 'should render the index.html view' do
        should render_template('index')
      end
    end
  end

  describe 'Routing', type: :routing do
    context 'when accessing "/"' do
      it 'should action #index' do
        should route(:get, '/').to(controller: :users, action: :index)
      end
    end
  end
end
