# Project Status and Details

## Issue with Contract Deployment

- The contract is **not getting deployed** and the exact issue is unclear.
- Through testing, it was discovered that the problem originates from the **constructor**.
- If the `_mint()` line is commented out in the constructor, the contract deploys successfully.

## Analysis

- This behavior is **unexpected** and suggests that the issue might be related to the `_mint()` function.
- The exact reason for this behavior is still unknown.

## Next Steps

- Plan to **search for a more comprehensive tutorial** to gain better understanding and find a solution.

## fixed the issue

- I figured out that the problem lied in using the latest openzepplin library was using the old version functions from them but they are removed in the latest version. 
- so i rewrote the code with the newer version fucntion and it is being deployed sucessfully now.