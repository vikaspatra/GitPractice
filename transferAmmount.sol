pragma solidity >=0.4.22 <0.6.0;

contract etherAccount{
    
    address client;
    
    constructor() public{
        client = msg.sender;
    }
    
    modifier ifClient(){
        if(msg.sender !=/*  Refer https://medium.com/coinmonks/smart-contracts-how-to-transfer-ether-ba464ec005c6
    First initialise the directory after truffle unbox pet-shop
    then make the transferAmmount.sol file
    After running this transferAmmount.sol file deploy it/migrate it
*/

pragma solidity >=0.4.22 <0.6.0;

/*contract ERC20 {
    function totalSupply() public view returns (uint);
    function balanceOf(address tokenOwner) public view returns (uint balance);
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}*/

contract transferAmmount{

    address  public destinationAddress;
    struct client{
        string status;
        address buy_address;
        uint price;
    }

    mapping( uint => client) public clients;

    //deposit to smart contracts
    function deposit(uint num)  public payable  returns(bool){
        clients[num].status = "paid to smart contracts";
        clients[num].buy_address = msg.sender;
        return true;
    }

    //Withdraw the money from smart contracts to required address
    function withdraw(uint num) public {
        clients[num].status = "withdrawed from smart contracts";
        destinationAddress = 0x0110627c241a742013Da9974cB4a3801466Fa8D1;
        destinationAddress.transfer(9 * 1 ether);
          
    }
}

/*
    After Migration:
    since the UI part is not done you should try the following commands through the terminal to transfer amounts between the accounts:
    I did this :


    truffle console
    transferAmmount.deployed().then(function(instance){app = instance})
    app.deposit(0, {from:web3.eth.accounts[2],value:web3.toWei(10,'ether')})
    app.withdraw(0)
*/ client){
            revert();
        }
        else{
            _;
        }
    }
    
    //send the money from contracts to address
    function withdraw(){
        
    }
    
    //send amount to contracts
    function giveToContract() public payable{
        
    }
    
    //check the amount present in the contracts
    function getWord() ifClient() public view returns(uint){
        return this.balance;
    }
    
}