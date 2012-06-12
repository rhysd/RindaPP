class String
    def undent
        gsub(/^\s{,#{split("\n").map{|s| s[/^\s+/].length }.min}}/, '')
    end
end
