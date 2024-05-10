import common : printf;

T fibonacci(T)(T n)
{
    static if (is(T == int))
    {
        T go(T n, T prev, T curr)
        {
            if (n == 0)
                return prev;
            else
                return go(n - 1, curr, prev + curr);
        }

        return go(n, 0, 1);

    }
    else
    {
        static assert(0, "fibonacci only supports integers");
    }
}

extern (C)
void main()
{
    auto n = 100;
    printf("Fibonacci number %d is %d\n", n, fibonacci(n));
}
