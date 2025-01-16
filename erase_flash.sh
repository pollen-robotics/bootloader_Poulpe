#!/bin/bash
echo "Erasing flash memory, it may take a while..."
probe-rs erase --chip STM32H743VGTx
echo "Erasing done!"