#pragma once

#include "driver/gpio.h";

class Button{
  public:
    Button(gpio_num_t pin);
    ~Button();

    bool is isPressed();

  private:
    gpio_num_t m_pin;
}