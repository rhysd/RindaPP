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

end
