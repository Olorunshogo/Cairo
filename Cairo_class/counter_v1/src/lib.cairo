/// Interface representing `HelloContract`.
/// This interface allows modification and retrieval of the contract balance.
#[starknet::interface]
pub trait ICounter<TContractState> {
    /// Increase contract count.
    fn increase_count(ref self: TContractState, amount: u32);
    /// Retrieve contract count.
    fn get_count(self: @TContractState) -> u32;
}

/// Simple contract for managing count.
#[starknet::contract]
mod Counter {
    use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};
    use super::ICounter;
    #[storage]
    struct Storage {
        count: u32,
    }

    #[abi(embed_v0)]
    impl ICounterImpl of ICounter<ContractState> {
        fn increase_count(ref self: ContractState, amount: u32) {
            assert(amount != 0, 'Amount cannot be 0');
            self.count.write(self.count.read() + amount);
        }

        fn get_count(self: @ContractState) -> u32 {
            return self.count.read();
        }
    }
}
// mod HelloStarknet {
//     use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};

//     #[storage]
//     struct Storage {
//         count: felt252,
//     }

//     #[abi(embed_v0)]
//     impl HelloStarknetImpl of super::IHelloStarknet<ContractState> {
//         fn increase_count(ref self: ContractState, amount: felt252) {
//             assert(amount != 0, 'Amount cannot be 0');
//             self.count.write(self.count.read() + amount);
//         }

//         fn get_count(self: @ContractState) -> felt252 {
//             self.count.read()
//         }
//     }
// }

