# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
      attr_accessor :email_addr
    
      def initialize(email_addr)
         @email_addr=email_addr
      end

      def parse
        email_parsing= email_addr.split.collect { |email|email.split(",")}
            return email_parsing.flatten.uniq
      end
end