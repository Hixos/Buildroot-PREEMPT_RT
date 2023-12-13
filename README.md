# Buildroot PREEMPT_RT

## Usage
### Available configs
- `rpi_2b_rt_defconfig`

### Initial configuration
From the buildroot directory:
  
Setup:  
`make BR2_EXTERNAL=../ rpi_2b_rt_defconfig`  

Configuration  
`make menuconfig`  

Linux Configuration  
`make linux-menuconfig`  

Updating configuration files in parent folder  
`make savedefconfig`  
`make linux-update-defconfig`  
