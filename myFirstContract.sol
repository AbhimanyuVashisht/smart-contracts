pragma solidity ^0.4.6; 

interface Regulator{
    function checkValue(uint amount) returns(bool);
    function load() returns(bool);
}

contract Bank is Regulator{
    uint private value;
    
    function Bank(uint amount){
        value = amount;
    }
    
    function deposit(uint amount){
        value += amount;
    }
    
    function withdraw(uint amount){
        if(checkValue(amount)){
            value -= amount;
        }
    }
    
    function balance() returns(uint){
        return value;
    }
    
    function checkValue(uint amount) returns(bool){
        return value >= amount;
    }
    
    function loan() returns(bool){
        return value > 0;
    }
}



contract MyFirstContract is Bank{
    string private name;
    uint private age;

    function setName(string newName){
        name = newName;
    }
    
    function getName() returns(string){
        return name;
    }
    
    function setAge(uint newAge){
        age = newAge;
    }
    
    function getAge() returns(uint){
        return age;
    }
}


