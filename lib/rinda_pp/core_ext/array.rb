class Array

    def include_all? *args
        args.each do |arg|
            return false unless self.include? arg
        end
        true
    end

    def include_any? *args
        args.each do |arg|
            return true if self.include? arg
        end
        false
    end

    def self.wrap arg
        arg.class == Array ? arg : [arg]
    end

    def zip_with *args,&block
        if block_given?
            self.zip(*args).map{|a| block.call *a}
        else
            self.zip(*args).map{|a,b| a+b }
        end
    end

end
