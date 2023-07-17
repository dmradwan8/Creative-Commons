// This code is released to the public domain under the Creative Commons Zero v1.0 Universal license.

//import necessary libraries
extern crate rand;
use rand::Rng;

fn main() {
    // variable to hold number of guesses
    let mut num_guesses = 0;

    // Generate random number between 0 and 100
    let secret_number = rand::thread_rng().gen_range(0, 101);

    // main loop
    loop {
        println!("Please enter your guess:");

        // take input
        let mut guess = String::new();
        std::io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        // convert input to u32
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        // Increment number of guesses
        num_guesses += 1;

        // Compare guess with secret number.
        println!("You guessed: {}", guess);

        match guess.cmp(&secret_number) {
            std::cmp::Ordering::Less => println!("Too small!"),
            std::cmp::Ordering::Greater => println!("Too big!"),
            std::cmp::Ordering::Equal => {
                println!("You win!");
                println!("It took you {} guesses", num_guesses);
                break;
            }
        }
    }
}