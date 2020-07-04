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