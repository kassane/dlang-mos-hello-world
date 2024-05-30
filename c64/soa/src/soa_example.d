import common : printf;

struct TransparentStruct
{
    dchar c, d;
}

struct StructOfArray(T, size_t N)
{
    T[N] data;
    size_t length = N;

    // Clear the array
    void clear() @nogc
    {
        length = 0;
    }

    // Get the current capacity
    size_t capacity() const @nogc
    {
        return N;
    }

    // Get the current length
    size_t size() const @nogc
    {
        return length;
    }
}

extern (C)
void main()
{
    // Create a struct of array of TransparentStruct with 5 elements
    enum size_t N = 5;
    StructOfArray!(TransparentStruct, N) soa = {
        [
            {c: 'a', d: 'b'}, {c: 'c', d: 'd'},
            {c: 'e', d: 'f'}, {c: 'g', d: 'h'},
            {c: 'i', d: 'j'}
        ]
    };

    // Access elements directly
    foreach (idx; 0 .. N)
    {
        printf("c[0].c: %d\n", soa.data[idx].c);
        printf("c[0].d: %d\n", soa.data[idx].d);
    }

    // Example of clearing the array
    soa.clear();
    printf("Cleared size: %zu\n", soa.size());

    // Example of getting the capacity
    printf("Capacity: %zu\n", soa.capacity());
}
