// [executable]
fn main() {
    let result: u8 = add_num(5, 10);

    println!("The result is: {}", result);
    assert!(result == 15, "Invalid sum");
}

// addditon function
fn add_num(x: u8, y: u8) -> u8 {
    x + y
}

// subtraction function
fn sub_num(x: u8, y: u8) -> u8 {
    return x - y;
}

// Assignment
// 1. Add an if statement to the subtraction to check if the result is negative, and throw an error if it is.
// 2. Do the same for multiplication and division functions.