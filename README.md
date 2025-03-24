# Dice Roll Smart Contract

This repository contains a Move-based smart contract that simulates a dice rolling mechanism on the blockchain. The contract leverages the Supra Decentralized Verifiable Random Function (DVRF) to generate cryptographically secure random numbers, ensuring transparency and fairness.

## What This Contract Does

**Request Random Numbers:** Users can call roll_dice to request a random number (representing a dice roll) from the Supra VRF system. The user specifies the range of the dice (e.g., 6 for a six-sided dice).

**Handle Randomness with Callbacks:** Once the Supra VRF generates a random number, it calls the `resolve_dice_roll` function to process the result.

**Store and Retrieve Results:** The contract maps dice roll requests to their outcomes, allowing users to view the resolved dice results using `get_dice_result`.

## About Supra DVRF
> Supra's dVRF provides secure, unbiased, and tamper-proof random number generation for blockchain applications. Unlike traditional random functions, DVRF delivers verifiable randomness, ensuring that no party can manipulate or predict the results.

## How This Contract Uses DVRF

**RNG Request:** The contract uses supra_vrf::rng_request to request a random number from the Supra DVRF system. A callback function (`resolve_dice_roll`) is specified to process the result.

**Random Number Verification:** Upon generation, the Supra DVRF triggers the callback and passes the random number, which is then verified using `supra_vrf::verify_callback`.

**Dice Roll Logic:** The random number is processed via modular arithmetic to ensure it fits within the specified dice range (e.g., [1, 6] for a six-sided dice).

**Result Storage:** The final dice roll outcome is stored in the contract, allowing users to retrieve it at any time.