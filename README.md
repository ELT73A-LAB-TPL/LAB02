# LAB02 template for ELT73A course 
[Create from template](https://ruseleredu.github.io/stm32doc/labs/lab02#crie-um-novo-reposit%C3%B3rio-com-base-no-template-do-lab02)

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

## Running STM32CubeMX in command-line mode
 - https://ruseleredu.github.io/stm32doc/docs/loadmx

## MiniF4-STM32F401CEU6
- https://github.com/WeActStudio/WeActStudio.MiniSTM32F4x1
  
## STM32CubeF4 MCU Firmware Package
- https://github.com/STMicroelectronics/STM32CubeF4
- https://github.com/STMicroelectronics/STM32Cube_MCU_Overall_Offer

## STM32 Development Tools
- https://www.st.com/en/development-tools/stm32cubemx.html
- https://www.st.com/en/development-tools/stm32cubeclt.html
- https://www.st.com/en/development-tools/stm32cubeprog.html
