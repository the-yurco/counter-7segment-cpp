#pragma once

#include "driver/gpio.h";

class Display{
  public:
    enum class Segment
    {
      A = GPIO_NUM_5,
      B = GPIO_NUM_4,
      C = GPIO_NUM_18,
      D = GPIO_NUM_19,
      E = GPIO_NUM_21,
      F = GPIO_NUM_22,
      G = GPIO_NUM_23
    };

    Display();
    ~Display();

    void setDigit(int digit);

    private:
      gpio_num_t segments[7];
}