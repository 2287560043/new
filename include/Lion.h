#pragma once
#include<iostream>
#include"Animal.h"
using namespace std;
class Lion:public Animal
{
public:
    //Lion();
    void makeSound();
    string getType();
    char getSymbol();

    char m_Symbol;
};