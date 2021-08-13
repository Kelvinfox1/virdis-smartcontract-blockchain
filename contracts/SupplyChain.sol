// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract supply_Chain {
    uint256 public _p_id = 0;
    uint256 public _u_id = 0;
    uint256 public _t_id = 0;

    struct track_product {
        uint256 _product_id;
        uint256 _owner_id;
        address _product_owner;
        uint256 _timeStamp;
    }
    mapping(uint256 => track_product) public tracks;

    struct product {
        string _product_name;
        uint256 _product_cost;
        string _product_specs;
        string _product_review;
        address _product_owner;
        uint256 _manufacture_date;
        uint256 _expiry_date;
    }

    mapping(uint256 => product) public products;

    struct participant {
        string _userName;
        string _passWord;
        address _address;
        string _userType;
        //uint rating =0;
    }
    mapping(uint256 => participant) public participants;

      function createParticipant(string name ,string pass ,address u_add ,string utype) public returns (uint){
        uint user_id = _u_id++;
        participants[user_id]._userName = name ;
        participants[user_id]._passWord = pass;
        participants[user_id]._address = u_add;
        participants[user_id]._userType = utype;
        
        return user_id;
    }
}
