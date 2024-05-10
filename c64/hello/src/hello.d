import common : printf;

extern (C)
void main()
{
    version(MOS6502)
    {
        printf("Hello World in D!\n");
    } else
    {
        printf("Invalid Version!\n");
    }
}
