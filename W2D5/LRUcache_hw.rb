class LRUCache
  attr_accessor :max, :cache

  def initialize(max)
    @max = max
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    return count.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    unless cache.include?(el)
      #remove oldest and add newest
      if cache.length == @max
        @cache.shift
        @cache << el
      else
        @cache << el
      end
    end

    if cache.include?(el)
      @cache << @cache.delete(el)
    end
  end
  #
  # def show
  #   # shows the items in the cache, with the LRU item first
  #   p @cache
  # end


end
