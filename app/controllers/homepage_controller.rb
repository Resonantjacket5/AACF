class HomepageController < ApplicationController
  
  
  
  def index
    @upcoming_events = UpcomingEvent.order('event_time DESC').take(3)
    @carousel_item_1 = CarouselItem.first
    @carousel_item_2 = CarouselItem.second
    @carousel_item_3 = CarouselItem.third
  end



end
