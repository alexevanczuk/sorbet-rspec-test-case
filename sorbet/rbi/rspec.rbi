# typed: strict

module RSpec
  sig {params(args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).void).void}
  def self.describe(*args, &example_group_block); end

  sig {params(args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).void).void}
  def self.xdescribe(*args, &example_group_block); end

  sig {params(args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).void).void}
  def self.context(*args, &example_group_block); end

  sig {params(name: String, args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).void).void}
  def self.shared_examples_for(name, *args, &example_group_block); end

  sig {params(name: String, args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).params(args: T.untyped).void).void}
  def self.shared_examples(name, *args, &example_group_block); end

  sig {params(name: String, args: T.untyped, example_group_block: T.proc.bind(Core::ExampleGroup).void).void}
  def self.shared_context(name, *args, &example_group_block); end

  module Core
    class ExampleGroup
      def include(*args); end

      def let(name, &block); end

      sig { params(name: T.nilable(Symbol), block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def subject(name = nil, &block); end

      sig { params(scope: Symbol, block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def before(scope = :each, &block); end

      sig { params(block: T.proc.params(arg0: RSpec::Core::Example::Procsy).bind(T.untyped).void).returns(T.untyped) }
      def around(&block); end

      sig { params(block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def after(&block); end

      sig { params(name: String, block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def xit(name, &block); end

      sig { params(name: T.nilable(String), block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def it(name = nil, &block); end

      sig { params(name: String, type: T.nilable(Symbol), block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def scenario(name, type: nil, &block); end

      sig { params(name: String, type: T.nilable(Symbol), block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def xscenario(name, type: nil, &block); end

      def context(name, **metadata, &block); end

      def pending(name, **metadata, &block); end

      def xcontext(name, &block); end

      def create(*args); end

      def expect(*args); end

      def allow(*args); end

      def allow_any_instance_of(*args); end

      def include_context(*args); end

      def shared_examples(*args); end

      def shared_context(*args); end

      def it_behaves_like(*args); end

      sig { params(name: Symbol, block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def let!(name, &block); end

      sig { params(name: Symbol, block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def let(name, &block); end

      def include_examples(*args); end

      def be(*args); end

      def eql(*args); end

      def eq(*args); end

      def is_expected;end

      sig { params(name: T.nilable(T.any(T.any(String, Symbol), T::Array[T.any(String, Symbol)])), block: T.proc.bind(T.untyped).void).returns(T.untyped) }
      def its(name = nil, &block); end

      def expect(*args); end

      def shared_examples_for(*args); end

    end
  end
end

def pry; end
