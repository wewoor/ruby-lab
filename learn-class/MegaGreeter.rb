#!/usr/bin/env ruby
class MegaGreeter 
    attr_accessor :names

    def initialize(names = "World")
        @names = names;
    end

    # function say hi
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # each list
            @names.each do | name |
                puts "Hello #{name} !"
            end
        else
            puts "Hello #{@names}"
        end
    end


    # function say bye
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(",")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end

end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Ziv"
    mg.say_hi
    mg.say_bye

    mg.names = ["Ziv", "Zuo", "Wei"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye

    me = MegaGreeter.new("Ziv")
    me.say_hi
    me.say_bye
end