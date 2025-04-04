# Bootloader for STM32

This is the bootloader for poulpe boards based on the STM32H743VG chip.


# Flashing the bootlaoder

Flash the bootloader

```
cargo flash --release --chip STM32H743VGTx
```

## Erasing the flash

If there was a previously installed applicaiton on the board, you can erase the flash by running 

Any data stored in the flash will be lost (ex. HARDWARE_ZEROS)
```
sh erase_flash.sh
```
and then flash the bootloader again.

## Debugging the bootloader

If you wannad debug the bootloader make sure to build it first

```
cargo build --release
```

Flash the bootloader (or not if already flashed)

```
cargo flash --release --chip STM32H743VGTx
```

To run the debugger, first stop the chip
```
probe-rs debug --chip STM32H743VGTx
```
and write `halt` inside, then Ctrl+C to exit the debugger.

Then attach the the debugger
```
probe-rs attach --chip STM32H743VGTx target/thumbv7em-none-eabihf/release/bootloader_poulpe
```

## Note
Using the embassy-rs fork from pollen robotics: https://github.com/pollen-robotics/embassy


