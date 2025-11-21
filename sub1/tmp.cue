package sub1

// #person is a real person
#person: {
    name: =~"^[A-Za-z0-9'`-]+$"
    address: string
    age: int | 0
    children: [...#person]
}
