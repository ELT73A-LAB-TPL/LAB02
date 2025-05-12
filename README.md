# LAB02 template for ELT73A course 

## Git commands
How to config git
```bash
git config --global user.name "Your Name"
git config --global user.email yourmail@domain.tld
```
It's recommended to verify that the your Git installation is not performing any transformation between LFs and CRLFs. 

```bash
git config --global core.autocrlf false
```
```bash
git config list --show-origin
```
How to commit updates
```bash
cd LAB02
git status
git add .
git commit -m "My message for this commit!"
git push
git log
```


### Load STM32CubeMX Script

Call for Help (--help, -h, /?)
```bash
LoadMX --help
```
Run STM32CubeMX interactively
```bash
LoadMX -i
```
Opens STM32CubeMX and loads default values for Project Name, Script and Code Generation (STM32F411CEUx, BaseScript.txt and N)
```bash
LoadMX
```
Load with Project Name
Opens STM32CubeMX with provided Project Name and loads default values for Script and Code Generation (BaseScript.txt and N)
```bash
LoadMX ProjectName
```
Opens STM32CubeMX with provided Project Name and Script Name and loads default value for Code Generation (N)
```bash
LoadMX ProjectName ScriptName.txt
```
Opens STM32CubeMX with provided Project Name, Script Name and generate code
```bash
LoadMX ProjectName ScriptName.txt Y
```

## MiniF4-STM32F401CEU6
- https://github.com/WeActStudio/WeActStudio.MiniSTM32F4x1
  
## STM32CubeF4 MCU Firmware Package
- https://github.com/STMicroelectronics/STM32CubeF4
- https://github.com/STMicroelectronics/STM32Cube_MCU_Overall_Offer

## STM32 Development Tools
- https://www.st.com/en/development-tools/stm32cubemx.html
- https://www.st.com/en/development-tools/stm32cubeclt.html
- https://www.st.com/en/development-tools/stm32cubeprog.html
