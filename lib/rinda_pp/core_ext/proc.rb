require 'rinda_pp/utility/constants'

class Proc

    private

    def apply_binary rhs
        raise "block is needed" unless block_given?
        Proc.new{|*args| yield self.call(*args),rhs.call(*args) }
    end

    public

    RindaPP::OPERATORS[:binary].each do |operator|
        define_method(operator) do |rhs|
            apply_binary(rhs,&operator)
        end
    end

end
