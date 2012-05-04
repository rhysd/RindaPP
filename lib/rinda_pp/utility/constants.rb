module RindaPP
    OPERATORS = {
        :binary => %w[ + - * / ** % | & ^ > < >= <= == === =~ <=> >> << != !~ ].map{|i| i.to_sym },
        :unary => %w[ ~ +@ -@ ! ].map{|i| i.to_sym },
        :multi => %w[ [] []= ` ].map{|i| i.to_sym }
    }
end
