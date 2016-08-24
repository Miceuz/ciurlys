#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#define OUTPUT PB0
#define LED PB1
#define INPUT PB2

inline static void on(uint8_t pin) {
	PORTB |= _BV(pin);	
}

inline static void off(uint8_t pin) {
	PORTB &= ~_BV(pin);
}

volatile uint8_t inputTimeout, outputPulseDone;
volatile uint16_t pulseLength;

inline static void startInputPulseTimer() {
	inputTimeout = 0;
	TCCR0A = 0;
	TCNT0 = 0;
	TIMSK0 = _BV(TOIE0);
	TCCR0B = _BV(CS00) | _BV(CS01);
}

inline static void stopInputPulseTimer() {
	pulseLength = TCNT0;
	TCCR0B = 0;
}

inline static void startOutputPulseTimer() {
	outputPulseDone = 0;
	TCCR0A = 0;
	TIFR0 |= _BV(OCF0A);
	TIMSK0 = _BV(TOIE0) | _BV(OCIE0A);
	OCR0A = pulseLength;
	TCNT0 = 0;
	TCCR0B = _BV(CS00) | _BV(CS01);// | _BV(WGM02); 
}

inline static stopOutputPulseTimer() {
	TCCR0B = 0;
}

inline static uint8_t isNotaGlitch() {
	return TCNT0 > 15;
}

ISR(TIM0_OVF_vect){
	inputTimeout = 1;
	outputPulseDone = 1;
	TCCR0B = 0;
}

ISR(TIM0_COMPA_vect) {
	outputPulseDone = 1;
}

inline static uint8_t isInputHigh() {
	return (PINB & _BV(INPUT));
}

inline static uint8_t isInputLow() {
	return !(PINB & _BV(INPUT));
}

void main(void) {

	DDRB |= _BV(LED) | _BV(OUTPUT);
	on(OUTPUT);
	_delay_ms(1);

	sei();

	while(1) {
		while(isInputHigh()) {
			//wait
		}

		startInputPulseTimer();
		while(isInputLow() && !inputTimeout) {
			if(isNotaGlitch()) {
				on(LED);
			}
			//wait
		}
		stopInputPulseTimer();
		off(LED);

		if(inputTimeout) {
			while(isInputLow()) {
				//wait
			}
		} else {
			if(isNotaGlitch()) {
				off(OUTPUT);
				startOutputPulseTimer();
				while(!outputPulseDone) {
					//wait
				}
				stopOutputPulseTimer();
				on(OUTPUT);
			}
		}
	}
}