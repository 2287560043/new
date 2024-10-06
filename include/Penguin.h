#pragma once
#include<iostream>
#include"Animal.h"
using namespace std;
class Penguin:public Animal
{
public:
    //Penguin();
    void makeSound();
    string getType();
    char getSymbol();
    
    char m_Symbol;
};