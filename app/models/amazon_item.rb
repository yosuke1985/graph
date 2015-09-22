class AmazonItem < ActiveRecord::Base
  validates_presence_of :asin

  def get(path)
    lookup unless @looked
    @item && @item.get(path)
  end

  protected

  def validate
    lookup unless @looked
    errors.add :asin, "can't find the item from Amazon" unless @item
  end

  private

  def lookup
    @item = Amazon::Ecs.item_lookup(asin).first_item
    @looked = true
  end
end
