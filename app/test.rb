require 'amazon/ecs'


amazon_item = AmazonItem.find_by_asin '4797336617'
puts amazon_item.get 'itemattributes/title'
