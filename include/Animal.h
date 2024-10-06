#pragma once
#include<iostream>
#include<string>
using namespace std;

class Animal
{
public:
    virtual void makeSound()=0;
    virtual string getType()=0;
    virtual char getSymbol()=0;
};