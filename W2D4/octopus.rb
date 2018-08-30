FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish',
   'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus
  max = FISH.first.length
  to_eat = nil
  FISH.each do |fish1|
    FISH.each do |fish2|
      fish1.length > fish2.length ? longer = fish1 : longer = fish2
      if longer.length > max
        max = longer.length
        to_eat = longer
      end
    end
  end
  puts to_eat
end

sluggish_octopus

def dominant_octopus(array)
  return array if array.length <=1
  prc = Proc.new {|a,b| a.length > b.length}
  pivot = array.first
  left = dominant_octopus(  array[1..-1].select {|el| prc.call(el, pivot) == 1}  )
  right = dominant_octopus( array[1..-1].select  {|el| prc.call(el, pivot) != 1 } )

  array = left + [pivot] + right
  puts array.last
end

# dominant_octopus(FISH)

def clever_fish
  food = FISH.first
  FISH.each do |fish|
    food = fish if fish.length > food.length
  end
  puts food
end
clever_fish


def slow_dance(dir)
  tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
  tiles_array.each_with_index do |tile, idx|
    return idx if tile == dir
  end
end

Hash =  {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(dir)
  return Hash[dir]
end 
