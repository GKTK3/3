// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Student {

    struct StudentInfo {
        uint rollno;
        uint age;
        string name;   
    }

    StudentInfo[] public students;
    uint count = 0;

    function addStudent(uint _rollno, uint _age, string memory _name) public{
        students.push(StudentInfo(_rollno, _age, _name));
        count++;
    }

    function getStudentName(uint _rollno) public returns(string memory){
        for(uint i; i < count; i++){
            if(students[i].rollno == _rollno){
                return students[i].name;
            }
        }
    }

    fallback () external payable{
        payable(msg.sender).transfer(msg.value);
    }
}
