#include"zoo.h"
void zoo::showWay()
{
    cout<<"L is Lion"<<endl;
    cout<<"E is Elephant"<<endl;
    cout<<"P is Penguin"<<endl;
}
void zoo::makeSound()
{
    char type;
    cin>>type;
    
    if(type=='E')
    {
        E.makeSound();
    }
    else if(type=='L')
    {
        L.makeSound();
    }
    else if(type=='P')
    {
        P.makeSound();
    }
    else
    {
        cout<<"error"<<endl;
    }
}
void zoo::showAllSymbol()
{
    char a=L.getSymbol();
    char b=E.getSymbol();
    char c=P.getSymbol();
    cout<<a<<endl;
    cout<<b<<endl;
    cout<<c<<endl;
}