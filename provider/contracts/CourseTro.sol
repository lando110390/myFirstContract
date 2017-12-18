pragma solidity ^0.4.0;

contract CourseTro {
    
    
    struct Instructor {
        string bookName;
        string author;
    }
    
    mapping (address => Instructor) instructors;
    address[] public instructorAccts;
    
    event InstructorInfo (string _bookName, string _author);
    
    function setInstructor(address _address, string _bookName, string _author) public {
        var instructor = instructors[_address];
        
        instructor.bookName = _bookName;
        instructor.author = _author;
        
        instructorAccts.push(_address) -1;
        InstructorInfo(_bookName, _author);
        
    }
    
    function getInstructor (address _address) view public returns (string, string, address) {
        return (instructors[_address].bookName, instructors[_address].author, _address);
    }
    
    function getInstructors() view public returns (address[]) {
        return instructorAccts;
    }
    
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }
}
