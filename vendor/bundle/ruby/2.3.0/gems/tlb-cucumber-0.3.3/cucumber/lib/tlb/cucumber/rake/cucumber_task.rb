require File.join('cucumber', 'rake', 'task')
require File.join('tlb', 'util')
require File.join('tlb' , 'cucumber' , 'lib' , 'configuration_inflection')

module Tlb
  module Cucumber
    module Rake
      class CucumberTask < ::Cucumber::Rake::Task

        def initialize(*args)
          super(args) do |this|
            yield this if block_given?
            this.cucumber_opts ||= []
            this.cucumber_opts = [this.cucumber_opts, "#{File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))}", 'features'].flatten
          end
        end
      end
    end
  end
end
