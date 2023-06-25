# Foundry accessing memory

In solidity, array inputs are declared with the `memory` keyword to stored the array values in memory so they can be accessed during execution

    ```solidity
    function args(uint8[4] memory arr) { /* rest of logic ... */  }
    ```

How does solidity do it?

1. Solidity stores the location in memory where the array is stored
1. The length of the array (only if you don't specify length)
1. The rest of the values in order
