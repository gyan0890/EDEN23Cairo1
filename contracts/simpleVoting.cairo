#[contract] //Keyword to show that it's a Cairo contract
 
//mod - keyword defining a module
mod X {
    use starknet::get_caller_address;
    //use starknet::ContractAddress;

    struct X {
        //Define name and a map for storing the proposal votes
        
    }

    //Populate the proposals array with a few default proposals
    #[constructor]
    fn constructor(_name: felt, _counter: u256) {
        
        //Initialise the proposal with 0 votes
       

    }

    #[external]
    fn addProposals(_counter: u256) {
        //Write to the proposal map
    }

    #[external]
    fn voteOnProposal(prop_num: u256) {
        //let voter = get_caller_address();
        
        //Read the proposalVotes mapping and increment by 1

        
        //Write the updated value here
        proposalVotes::write(prop_num, votes);
    }

    #[view]
    fn getVotesForProposal(prop_num: u256) -> felt {
      proposalVotes::read(prop_num)
    }

    //TODO - Add a function to compare two given proposals and return the one with higher votes

}
