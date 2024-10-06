#include<iostream>
#include"Elephant.h"
#include"Penguin.h"
#include"Lion.h"
#include"Animal.h"
#include"zoo.h"
using namespace std;
int main()
{
    cout<<"1"<<endl;
    zoo z;
    z.showWay();
    z.showAllSymbol();
    z.makeSound();
    system("pause");
    exit(0);
}