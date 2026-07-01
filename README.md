# mod of UHD driver for DIY pcie SDR kit

official: [UHD repo](https://github.com/EttusResearch/uhd)

This is the modified UHD driver for my DIY PCIE based SDR kit which has similar hardware structure (Xilinx Artix-7 + ADI AD9361)

It use PCIE x2 for more stable and fast data transport, which require RTOS mod linux system for maxium performance.

Original [README](https://github.com/MX-Qulin/uhd/blob/manni-dev/original_README.md)

# ⚠alert

this uhd driver doesn't support USB connected B210, so if you want both support, you need multiple driver mod and port binding.

## installtion

first install uhd original driver(compiled) or compile yourself.

then, in this repo:
```bash
chmod 777 ./install_uhd.sh
sudo ./install_uhd.sh
```

wait and enjoy.

## demo

<img width="864" height="526" alt="image" src="https://github.com/user-attachments/assets/e29470f1-641e-409a-b599-357ab92b95e9" />

