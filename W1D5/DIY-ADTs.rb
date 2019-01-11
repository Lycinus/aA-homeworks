class Stack

    attr_accessor :stack

    def initialize
        @stack = []
    end

    def push(el)
        self.stack.push(el)
    end

    def pop
        self.stack[0...-1]
    end

    def peek
        self.stack[0]
    end

end


class Queue

    attr_accessor :queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        self.queue.push(el)
    end

    def dequeue
        self.queue.shift
        self.queue
    end

    def peek
        self.queue[0]
    end

end


class Map

    attr_accessor :map

    def initialize
        @map = []
    end

    def set(key, value)
        self.map.each_with_index do |pair, i|
            if pair.include?(key)
                self.map[i] = [key, value]
                return self.map
            end
        end
        self.map.push([key, value])
    end

    def get(key)
        self.map.each {|pair| return pair[1] if pair[0] == key}
    end

    def delete(key)
        self.map.length.times {|i| self.map.delete_at(i) if self.map[i].first == key}
    end

    def show
        self.map
    end
end
