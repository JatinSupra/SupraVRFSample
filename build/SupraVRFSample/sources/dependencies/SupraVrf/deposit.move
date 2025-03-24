module supra_addr::deposit {

    /// Sets the minimum balance limit
    native public entry fun client_setting_minimum_balance(sender: &signer, min_balance_limit_client: u64);

    /// client whitelisting the contract address
    native public entry fun add_contract_to_whitelist(sender: &signer, contract_address: address);

    /// Removing whitelisted contract address by client
    native public entry fun remove_contract_from_whitelist(sender: &signer, contract_address: address);

    /// Client deposit Supra coin
    native public entry fun deposit_fund(sender: &signer, deposit_amount: u64);

    /// Client withdrawing deposit Supra coin
    native public entry fun withdraw_fund(sender: &signer, withdraw_amount: u64);
}
