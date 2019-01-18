class LRUCache
    def initialize(size)
        @cache = Array.new
        @size = size
        @hash = {}
    end

    def count
        cache.count
    end

    def add(el)
        if hash.has_key?(el)
            cache.delete(el)
            cache.push(el)
            hash[el] = count
        else
            cache.push(el)
            hash[el] = count
        end

        cache.shift if cache.count > size
        nil
    end

    def show
        cache
    end

    private
    
    attr_accessor :cache, :hash
    attr_reader :size
  end