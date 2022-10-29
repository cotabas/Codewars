# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
    @pages = {}
    start = 0
    (collection.size / items_per_page.to_f).ceil.times do |count|
      @pages[count] = start + items_per_page > collection.size ? collection[start..collection.size] : collection[start..(start + items_per_page - 1)]
      start += items_per_page
    end
  end
  
  
  # returns the number of items within the entire collection
  def item_count
   @collection.size
  end
	
  # returns the number of pages
  def page_count
    @pages.size 
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    @pages[page_index].nil? ? -1 : @pages[page_index].size
  end
	
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    @collection.size - 1 < item_index || item_index < 0 ? -1 : item_index / @items_per_page
  end
end
