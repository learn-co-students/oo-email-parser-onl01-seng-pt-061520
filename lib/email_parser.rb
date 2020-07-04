# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# pseudo code 
# initialize: sends string to parse instance method
# parse: separate the string into individual emailaddresses 
#   based on " " and ","

class EmailAddressParser

    attr_accessor :string_of_emails    

    def initialize(string_of_emails)
        @string_of_emails = string_of_emails
    end

    def parse
        parsed = []
        parsing = @string_of_emails.split(", ")
        parsing.map {|email_string| parsed << email_string.split(" ")}
        parsed.flatten.uniq
    end
end