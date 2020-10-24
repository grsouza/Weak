# Weak
![CI](https://github.com/grsouza/Weak/workflows/CI/badge.svg)

Type that holds weak references to objects.

## Example usage

The most used use case of this micro library is for creating a collection that holds weak references, example:

```swift
let arrayOfWeakObjects: [Weak<MyClass>] = []
let arrayOfStrongObjects: [MyClass] = [...]

for object in arrayOfStrongObjects {
    arrayOfWeakObjects.append(Weak(object))
}

// At this point all objects in `arrayOfWeakObjects` are weak referecens.

arrayOfStrongObjects.removeAll()

// If we remove all objects from array, no strong references will be hold
// and then all objects of `arrayOfWeakObjects` will be released.
for object in arrayOfWeakObjects {
    assert(object.value == nil)
}
```
