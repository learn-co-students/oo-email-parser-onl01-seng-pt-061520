# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    #initialized with a string of EmailAddressParser
    # seperated with spaces or commas & only return uniqe addresses
    # parse those emails into an array w/ @parse
    def initialize(email_string)
      @email_string = email_string
    end

    attr_accessor :email_string

    def parse
      email_array= email_string.split(/[,\s]+/)
      email_array.uniq
    end
end
