/// Questions
/// 1. Different type of initializers?
///     The different types of initializers are the designated and the convenience initializers.
/// 2. Difference between designated initializers and convenience initializers. Give an example
///     The difference between designated initializers and convenience is that designated initializers can initialize by themselves while
///     convenience initiailizers must call another initializer. Convenience initializers must use the `convenience` keyword.

    class TestInitializer {
        var name: String
        
        init(name: String){
            self.name = name
        }
        convenience init (specialName: String){
            self.init(name: specialName + "* special")
        }
    }
    let test1 = TestInitializer(name: "Joe")
    print(test1.name) // Joe
    let test2 = TestInitializer(specialName: "Joe Schmoe")
    print(test2.name) // Joe Schmoe* special

/// 3. Difference between if let and guard let?
///     The difference between if let and guard let is that if let binds the optional and then runs inside block with that local binded variable.
///     If the optional is nil, the block is skipped and the nil variable is inaccessible.
///     The guard let tests for nil and only runs the block if the optional is nil. Otherwise the binded variable can be accessed outside the
///     block.
/// 4. What is closure?
///     Closure are a cross between a variable and a function. They are implemented like a function but can passed like a variable.
/// 5. Different types of closure?
///     There are four different types of closure:
///     • Non-escaping
///     • Escaping
///     • Trailing
///     • Auto Closure
/// 6. Difference between escaping and non-escaping?
///     Non-escaping closure get passed in a function and get reclaimed by memory once complete. Escaping closures avoid getting reclaimed
///     in memory.
/// 7. What is autoclosure?
///     Autoclosure is a keyword that makes it so you don't have to use curly brackets `{}` when passing in closures.
/// 8. Are closures reference type or value type?
///     Closures are reference type.
/// 9. What is generics?
///     Generics allow you to design classes, structs, and functions to be become specific for any datatype when you call them.
/// 10. Enum, protocol, collection type? Are they value type or reference type?
///     Enum and the collections are value type. Protocols depend whether a struct or class in conforming it and will take the type of the struct
///     or class.
///

