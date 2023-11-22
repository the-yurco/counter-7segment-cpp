#include "display.h";

Display::Display(){
  int i  = 0;
  
  for(auto &segment : segments){
    segment = static = static_cast<gpio_num_t>(Segment(i));
    gpio_reset_pin(segment);
    gpio_set_direction(segment, GPIO_MODE_OUTPUT);
    i++;
  }

  Display::~Display(){

  }

  void Display::setDigit(int digit){
    for (int i = 0; i < 7; i++){
      gpio_set_level(segments[i], digitSegments[digit][i]);
    }
  }
}