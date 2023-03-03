#[contract] //Keyword to show that it's a Cairo contract
 
//mod - keyword defining a module
mod Voting {
    use starknet::get_caller_address;
    //use starknet::contract_address_const;

    struct Storage {
        //STEP1
        //Define a variable called "nam" of type "felt"
        //Define a variable called "proposalVotes" of type "LegacyMap<>" - mapping between u256 and felt
        
    }

    //Populate the proposals array with a few default proposals
    #[constructor]
    fn constructor(_name: felt, _propNum: u256) {
        //STEP 2: Initialise the name variable using "::write()"

        //STEP3: Initialise the proposalVotes variable for a specific proposal number

    }

    #[external]
    fn addProposals(_counter: u256) {
        //STEP4: Add new proposals
        //BONUS: Check if the proposal number already exists
        
    }

    //OPTIONAL TODO: Add a function to register a voter - set the default proposal voted to 0

    #[external]
    fn voteOnProposal(prop_num: u256) {
        //let voter = get_caller_address();
        //vote::write(voter, prop_num);

        //STEP5: Read the number of votes for a proposal and increment by 1
        //HINT: Use "::read()"
        //BONUS:Check if the proposal exists
        //DOUBLE BONUS: Check if the voter has already voted for this proposal

        proposalVotes::write(prop_num, votes);
    }

    #[view]
    fn getVotesForProposal(prop_num: u256) -> felt {
      proposalVotes::read(prop_num)
    }

    //BONUS TODO - Compare any 2 proposals and return the one with the highest number of votes 

}

