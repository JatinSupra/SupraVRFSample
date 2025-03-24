module supra_addr::supra_vrf {
    use std::string::String;

    native public fun rng_request(
        _sender: &signer, // caller signer
        _callback_address: address, // callback address
        _callback_module: String, // callback module name
        _callback_function: String, // callback function name
        _rng_count: u8, // how many random number you wants to generate
        _client_seed: u64, // using as seed to generate random. defualt pass "0", if you don't want to use
        _num_confirmations: u64, // how many confirmations you require for random number. default pass 1, if you don't want to use
    ): u64;

    native public fun verify_callback(
        _nonce: u64,
        _message: vector<u8>,
        _signature: vector<u8>,
        _caller_address: address,
        _rng_count: u8,
        _client_seed: u64,
    ): vector<u256>;

}
