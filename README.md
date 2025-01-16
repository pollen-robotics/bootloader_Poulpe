# Bootloader for STM32

The bootloader uses `embassy-boot` to interact with the flash.

# Usage

Flash the bootloader

```
cargo flash --features embassy-stm32/stm32h743vg --release --chip STM32H743VGTx --features "defmt,defmt-rtt"
```
