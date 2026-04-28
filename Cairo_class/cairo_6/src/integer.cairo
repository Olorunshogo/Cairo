#[executable]
fn main() {
    // Addition
    let addResult: u8 = add_num(5, 10);
    println!("The result is: {}", addResult);
    assert!(addResult == 15, "Invalid sum");

    // Subtraction
    let subtractionResult: u8 = sub_num(8, 32);
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

fn sub_number(x: u32, y: u32) -> Result<u32, felt252> {
    if x < y {
        Result::Err('Negative result')
    } else {
        Result::Ok(x - y)
    }
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

