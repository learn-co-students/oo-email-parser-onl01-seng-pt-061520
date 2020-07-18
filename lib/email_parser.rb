class EmailAddressParser
    attr_accessor :email

    def initialize(emails)
        @email = emails
    end

    def parse
        email_list = @email.split(/[, ]/).uniq
        email_list.reject! {|input| input.empty?}
        email_list
    end

end




# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
