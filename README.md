# Formal V&V Process for MATLAB&reg; Release Upgrade 

This example workflow demonstrates a formal verification and validation workflow for upgrading MATLAB&reg; releases with confidence.  
These V&V activities revolve around using Multi-Release Testing with Simulink Test&trade;
 to show that the simulation results for both model and generated code are equivalent between the old and new releases. 
Making extensive use of automation, this reference workflow equips you to reduce the effort to upgrade releases and to automate the process in a CI pipeline.

## MathWorks&reg; Product and Installation Requirements

Requires MATLAB release R2022b or newer
- [Simulink&reg;](https://www.mathworks.com/products/simulink.html)
- [Stateflow&reg;](https://www.mathworks.com/products/stateflow.html)
- [Simulink Check&trade;](https://www.mathworks.com/products/simulink-check.html)
- [Simulink Coverage&trade;](https://www.mathworks.com/products/simulink-coverage.html)
- [Simulink Design Verifier&trade;](https://www.mathworks.com/products/simulink-design-verifier.html)
- [Simulink Test&trade;](https://www.mathworks.com/products/simulink-test.html)
- [Requirements Toolbox&trade;](https://www.mathworks.com/products/requirements-toolbox.html)
- [MATALB Coder&trade;](https://www.mathworks.com/products/matlab-coder.html)
- [Simulink Coder&trade;](https://www.mathworks.com/products/simulink-coder.html)
- [Embedded Coder&trade;](https://www.mathworks.com/products/embedded-coder.html)

Because this project demonstrates an upgrade from R2022b to a newer release with the help of Multi-Release Testing, both MATLAB releases must be installed locally.

## Project Structure

This project is composed of a main Simulink model `CruiseControl_TestSuite.slx`, which is linked to a set of functional requirements via the Requirements Toolbox. 
To test the behavior of the model against the requirements, there are also test harnesses, each used to execute a set of functional tests. 
Test definition and execution are centralized in the Simulink Test Manager. 

As part of the upgrade process, Simulink Check is used together with the Upgrade Advisor to ensure that upgraded models comply with the latest modeling guidelines. 
After that, structural coverage is collected for the tests using Simulink Coverage, 
and any coverage gaps are then addressed via automatic test generation using Simulink Design Verifier. 
This process is repeated for the code generated from the model using Embedded Coder.

Combining the Upgrade Advisor with the MathWorks Verification and Validation tools results in a formal process that builds confidence in the newer release by 
showing that the upgraded model complies with the latest standards, that its functional behavior is equivalent to the old release, 
and that the code generated from the upgraded model is also functionally equivalent to the code generated in the old release.


## Usage

To get started, open the `Release_Upgrade_Example.prj`. The Live Script `upgradeWorkflow.mlx` should open automatically. It contains all the steps in the upgrade workflow.  
See the [Scripts](/Scripts/) folder for details on how the upgrade process is automated.

## License

The license is available in the license.txt file in this GitHub repository.

## Community Support
[MATLAB Central](https://www.mathworks.com/matlabcentral)

Copyright 2024 The MathWorks, Inc.