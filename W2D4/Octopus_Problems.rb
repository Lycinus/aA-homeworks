require 'byebug'
def sluggish_octopus(fish)

    fish.each do |fish1|
        fish.each do |fish2|
             fish1 if fish1.length 
        end
    end
end

def dominant_octopus(fish)
    sorted_fish = merge_sort_fish(fish)
    sorted_fish.last
end

def merge_sort_fish(fish)
    return fish if fish.length == 1
    
    mid = fish.length/2
    left = fish[0...mid]
    right = fish[mid..-1]

    merge(merge_sort_fish(left), merge_sort_fish(right))
end

def merge(arr1, arr2)
    merged = []
    until arr1.empty? || arr2.empty?
        if arr1.first.length <= arr2.first.length
            merged << arr1.shift
        else
            merged << arr2.shift
        end
    end
    merged + arr1 + arr2
end


def clever_octopus(fish)
    biggest_fish = ""
    fish.length.times do |fish1|
        biggest_fish = fish[fish1] if fish[fish1].length > biggest_fish.length
    end
    biggest_fish
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ] 

def slow_dance(tile_to_check, tiles_array)
    tiles_array.each_with_index do |tile, i|
        return i if tile == tile_to_check
    end
    nil
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def fast_dance(tile_to_check, tiles_hash)
    tiles_hash[tile_to_check]
end