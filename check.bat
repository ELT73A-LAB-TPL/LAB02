
git -v >> arm-config.txt
git config list --show-origin >> arm-config.txt

echo. >> arm-config.txt
arm-none-eabi-gcc --version >> arm-config.txt
cmake --version >> arm-config.txt
echo. >> arm-config.txt
arm-none-eabi-gdb --version >> arm-config.txt

echo. >> arm-config.txt
if defined STM32CLT_PATH (
    echo STM32CLT_PATH: %STM32CLT_PATH% >> arm-config.txt
)

echo. >> arm-config.txt
if defined STM32CubeMX_PATH (
    echo STM32CubeMX_PATH: %STM32CubeMX_PATH% >> arm-config.txt
)

echo. >> arm-config.txt
code --profile STM32 --list-extensions --show-versions >> arm-config.txt

