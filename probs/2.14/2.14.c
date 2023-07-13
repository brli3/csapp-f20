#include <stdio.h>

int main() {
    unsigned char a = 0x55, b = 0x46;
    // a =  0b 0101 0101 ;
    // b =  0b 0100 0110 ;
    // a&b= 0b 0100 0100; 0x44
    // a|b= 0b 0101 0111; 0x57
    // ~a = 0b 1010 1010; 
    // ~b = 0b 1011 1001;
    //~a|~b=0b 1011 1011; 0xBB
    // !b = 0b 0000 0000;
    // a&!b=0b 0000 0000; 0x00
    printf("a&b=0x%x\n", a & b);
    printf("a|b=0x%x\n", a | b);
    printf("~a|~b=0x%x\n", (unsigned char) ~a | ~b);
    printf("a&!b=0x%x\n", a & !b);
    return 0;
}
