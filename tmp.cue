// Package mod1 comment.
package mod1

x: #B & {
	y: [ 1 ]
}

#B: #A | []

#A: {
	y?: [...int]
	...
}

c1: close({
    foo: string
    bar: int64 & int
    map: [string]: string
})

c2: [...close({
    abs: string
    xyz: int
})]

c3: [...close({
    bar: string
    baz: int
})] & [_, ...]

c4: [{foo:int}, ...close({
    bar: string
})] & [_, ...]

// #person is a real person
#person: {
    name: =~"^[A-Za-z0-9'`-]+$"
    address: string
    age: int | 0
    children: [...#person]
    "links"!: [...close({
        "name"!: string
    })] & [_, ...]
}

// "Unnamed" types - not day 1

// Day 1 - only top-level and emit "(more)" for nested..

// Day 1 - non-hidden (exported) definitions
#house: {
    address?: string
    number?: int
}

// #recursive is an example of a recursive type.
#recursive: {
    // child comment.
    child: #recursive | null
}

// Not day 1
_people: [...#person] // hidden field
people: [...#person] // regular field

Tmp: bool | number | *string | null

// "Data" cue is based on regular fields

EmptyStruct: {}

EmptyStruct2: close({})

#Blank: _
