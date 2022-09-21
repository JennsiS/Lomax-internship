module Passport
    attr_accessor :id_number

    def set_legal_name(legal_name)
        @legal_name = legal_name
    end

    def get_legal_name
        return @legal_name
    end

end