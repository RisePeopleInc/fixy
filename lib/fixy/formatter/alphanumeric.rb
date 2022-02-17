module Fixy
  module Formatter
    module Alphanumeric

      #
      # Alphanumeric Formatter
      #
      # Only contains printable characters and is
      # left-justified and filled with spaces.
      #

      def format_alphanumeric(input, field_width)
        input_string = String.new(input.to_s).tr "#{self.class::LINE_ENDING_CRLF}#{line_ending}", ''
        result = ''
        result << input_string[0, field_width]
        result << ' ' * (field_width - result.length)
      end
    end
  end
end
