# your code here
class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*enumerable)
        new(enumerable)
    end

    def clear
        @hash.clear
        self
    end

    def each
        for element in @hash.keys
            yield element
        end
        self
    end
    
    def inspect
        keys = @hash.keys
        "#<MySet: {#{keys.join(', ')}}>"
    end
end