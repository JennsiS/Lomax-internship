require_relative '../human.rb'

class SecurityGuard < Human
    attr_accessor :credential

    def guard
    end

    def talk
        if block_given?
            yield
        else 
            puts "[Security guard talking] Here #{@credential} talking, do you hear me?"
        end
    end

end