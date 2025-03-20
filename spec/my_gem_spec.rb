# frozen_string_literal: true
# typed: strong

require 'pry'

RSpec.describe MyGem do
  let(:available_to_both_contexts) { 'available to both contexts' }
  
  context 'context a nesting 0' do
    let(:only_available_to_context_a) { 'only available to context a' }
    pry if ENV['DEBUG']

    it "context a nesting 0 test" do
      pry if ENV['DEBUG']
      available_to_both_contexts # should go-to-definition to first definition of this variable
      only_available_to_context_a # should go-to-definition to first definition of this variable
      expect(true).to eq(true)
    end

    context 'context a nesting 1' do
      let(:only_available_to_context_a) { 'overridden' } # second definition
      it 'context a nesting 1 test' do
        pry if ENV['DEBUG']
        only_available_to_context_a # should go-to-definition to second definition of this variable
        expect(true).to eq true
      end
    end
  end

  context 'context b nesting 0' do
    let(:only_available_to_context_b) { 'only available to context b' }
    pry if ENV['DEBUG']
    it "context b nesting 0 test" do
      pry if ENV['DEBUG']
      available_to_both_contexts # should go-to-definition to first definition of this variable
      only_available_to_context_b # should go-to-definition to first definition of this variable
      expect do
        only_available_to_context_a # should be a type error since it's not available in this context
      end.to raise_error(NameError)
      expect(true).to eq(true)
    end
  end
end
