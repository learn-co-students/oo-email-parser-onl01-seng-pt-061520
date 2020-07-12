# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize (unformatted_emails)
        @unformatted_emails = unformatted_emails

    end

    def parse
        @unformatted_emails.split(/[,\s]/).map(&:strip).delete_if{|x| x == ""}.uniq
    end








end
