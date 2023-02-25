#[contract] //Keyword to show that it's a Cairo contract
 
//mod - keyword defining a module
mod Voting {
    use starknet::get_caller_address;
    use starknet::contract_address_const;
    use starknet::ContractAddress;
    use array::ArrayTrait;

    struct Storage {
        name: felt,
        //Mapping between voters and proposals
        vote: LegacyMap::<ContractAddress, u256>,
        proposalVotes: LegacyMap::<u256, u256>,
    }

    //Populate the proposals array with a few default proposals
    #[constructor]
    fn constructor(name_: felt) {
        
        //Initialise 3 proposals with 0 votes
        proposalVotes::write(1,0);
        proposalVotes::write(2,0);
        proposalVotes::write(3,0);

        name::write(_name);

    }

    #[external]
    fn vote(prop_num: u256) {
        let voter = get_caller_address();
        vote::write(voter, prop_num);

        u256 votes = proposalVotes::read(prop_num);
        votes = votes+1;

        proposalVotes::write(prop_num, votes);
    }

    #[view]
    fn getHighestVoted() -> u256 {
        let prop1Votes = proposalVotes::read(1);
        let prop2Votes = proposalVotes::read(2);
        let prop3Votes = proposalVotes::read(3);

        if prop1Votes > prop2Votes {
            prop1Votes > prop3Votes {
                 prop1Votes
            }
        }

        else if prop2Votes > prop1Votes {
            prop2Votes > prop3Votes {
                 prop2Votes
            }
        }

        else {
            prop3Votes
        }
    }

    //TODO - get voted proposal for a particular voted

}
