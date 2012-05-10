require 'cucumber/formatter/ordered_xml_markup'
require 'cucumber/formatter/io'
require 'fileutils'
require 'erb'

module Cucumber
  module Formatter
    class CapyWebShotDoc
      include ERB::Util # for the #h method
      include Io

      def initialize(step_mother, io, options)
        @directory = ensure_dir('tmp', 'html_doc')
        @documentation_root = @directory.gsub(/tmp/, '') + '/'
      end

      def before_features(features)
      end

      def before_feature(feature)
      end

      def feature_heading
      end

      def before_background(background)
      end

      def after_background(background)
      end

      def scenario_name(keyword, name, file_colon_line, source_indent)
      end

      def step_name(keyword, step_match, status, source_indent, background, file_colon_line)
        Capybara.current_session.driver.render "tmp/test.png"
      end

      def after_step(step)
      end

      def after_steps(steps)
      end

      def after_feature(feature)
      end

      def after_features(features)
      end

    end
  end
end

