use std::io;

fn read_i32(variable_name: &str) -> i32 {
    let mut input_line = String::new();
    println!("[{}] Enter a 32 bit integer: ", variable_name);
    io::stdin()
        .read_line(&mut input_line)
        .expect("Failed to read line");
    return input_line.trim().parse().expect("Did not enter a correct integer");
}

fn sum(a: i32, b: i32) -> i32 {
    return a + b;
}

fn main() {
    let a = read_i32("a");
    let b = read_i32("b");
    println!("Sum of {} and {}: {}", a, b, sum(a, b));
}
