#pragma once
#include<iostream>
#include"Animal.h"
using namespace std;
class Elephant:public Animal
{
public:
    //Elephant();
    void makeSound();
    string getType();
    char getSymbol();

    char m_Symbol;
};