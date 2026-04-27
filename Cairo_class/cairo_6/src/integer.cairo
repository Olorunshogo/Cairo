#[executable]
fn main() {
    // Addition
    let addResult: u8 = add_num(5, 10);
    println!("The result is: {}", addResult);
    assert!(addResult == 15, "Invalid sum");

    // Subtraction
    let subtractionResult: u8 = sub_num(32, 8);
    println!("The result is: {}", subtractionResult);
    // assert!(subtractionResult == 3, "Invalid subtractions")

    // Multplication
    let multiplied_number: u8 = multiply_num(20, 6);
    println!("The result of the multiplication is: {}", multiplied_number);
    assert!(multiplied_number == 120, "Invalid multiplication");

    // Division
    let division_result: u8 = divide_num(20, 5);
    println!("The result of the division is: {}", division_result);
    assert!(division_result == 4, "Invalid division");
}

// addditon function
fn add_num(x: u8, y: u8) -> u8 {
    x + y
}

// subtraction function
fn sub_num(x: u8, y: u8) -> u8 {
    assert!(!(y > x), "Subtraction should not be negative");
    return x - y;
}

// multiplication function
fn multiply_num(x: u8, y: u8) -> u8 {
    let result: u8 = x * y;
    return result;
}

// division function
fn divide_num(x: u8, y: u8) -> u8 {
    assert!(y != 0, "Division by zero is not allowed");
    let result: u8 = x / y;
    return result;
}
// Assignment
// 1. Add an if statement to the subtraction to check if the result is negative, and throw an error
// if it is.
// 2. Do the same for multiplication and division functions.


