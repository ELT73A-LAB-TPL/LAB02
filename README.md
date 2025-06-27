# LAB02 template for ELT73A course 
Opens STM32CubeMX with provided Project Name, Script Name and generate code
```bash
LoadMX BaseScript BaseScript.txt Y
```
### Final Grading Summary and Score Calculation

This section of the workflow is responsible for compiling the results from all individual configuration checks, presenting a clear grading report, calculating the total score, and determining the overall job status (pass/fail).

**Key Features:**

* **Aggregates Statuses**: It collects the "PASS" or "FAIL" status for each of the nine graded items (Git Version, Git User Name, Git User Email, GCC Version, CMake Version, GDB Version, STM32CLT Path, STM32CubeMX Path, and VS Code STM32 Extension).
* **Score Calculation**:
    * A `TOTAL_SCORE` variable is initialized to 0.
    * Points are added to `TOTAL_SCORE` for each item that has a "PASS" status, based on a weighted distribution:
        * Git Version: 5 points
        * User Name: 5 points
        * User Email: 5 points
        * GCC Version: 15 points
        * CMake Version: 10 points
        * GDB Version: 10 points
        * STM32CLT Path: 15 points
        * STM32CubeMX Path: 15 points
        * VS Code STM32 Extension: 20 points
    * The sum of points for all items, if passed, totals **100 points**.
* **Grading Report Output**: A "--- Grading Report ---" is printed to the workflow log, detailing the status of each individual configuration item.
* **Final Score Display**: The `Total Score` achieved (e.g., `85 / 100`) is clearly displayed at the end of the report.
* **Job Status Determination**:
    * The workflow explicitly checks if *any* of the graded items resulted in a "FAIL" status.
    * If even one item failed, the job will `exit 1`, causing the GitHub Actions job to be marked as **failed**.
    * If all items passed, the job will complete successfully and be marked as **passed**.

This comprehensive summary provides immediate feedback on the completeness and correctness of the development environment configuration based on the `arm-config.txt` file.

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

## Running STM32CubeMX in command-line mode
- https://www.st.com/resource/en/user_manual/um1718-stm32cubemx-for-stm32-configuration-and-initialization-c-code-generation-stmicroelectronics.pdf

To run STM32CubeMX in interactive command-line mode, use the following command line:
```bash
"%STM32CubeMX_PATH%\jre\bin\java" -jar "%STM32CubeMX_PATH%\STM32CubeMX.exe" -i
```

To run STM32CubeMX in command-line mode, getting commands from a script, use the following command line:
```bash
"%STM32CubeMX_PATH%\jre\bin\java" -jar "%STM32CubeMX_PATH%\STM32CubeMX.exe" -s ScriptToLoad.txt
```

To run STM32CubeMX in command-line mode getting commands from a script and without UI, use the following command line:
```bash
"%STM32CubeMX_PATH%\jre\bin\java" -jar "%STM32CubeMX_PATH%\STM32CubeMX.exe" -q ScriptToLoad.txt
```

To generate a script
```bash
export script ScriptToLoad.txt
```