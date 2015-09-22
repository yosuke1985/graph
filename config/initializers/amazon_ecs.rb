require 'amazon/ecs'
Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = 'AKIAJ67JTKJ7JRAQMXKQ'
  options[:AWS_secret_key] = '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'
  options[:associate_tag] = 'yosuke1985tm-22'
  options[:country] = 'jp'
end


res = Amazon::Ecs.item_search(
    'ruby',
    :browse_node    => '465392',
    :response_group => 'ItemAttributes, Images',
    :search_index   => 'Books',
    :country        => 'jp')
res.items.first(2).each do |item|
    puts item.get('ASIN') + ':' + item.get('ItemAttributes/Title') + item.get('ItemAttributes/ListPrice/Amount')
end




#   request = Vacuum.new('JP')
#   request.configure(
#     aws_access_key_id: 'AKIAJ67JTKJ7JRAQMXKQ',
#     aws_secret_access_key: '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',
#     associate_tag: 'tag'
#   )
#
#   response = request.item_search(
# query: {
#   'Keywords' => 'Architecture',
#   'SearchIndex' => 'Books'
#   }
# )
