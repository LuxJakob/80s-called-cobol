# COBOL Tryout Project

A simple project to explore COBOL programming on a Linux machine.

## Prerequisites

- **GnuCOBOL**: Install the COBOL compiler:
  ```bash
  sudo apt-get install gnucobol  # Debian/Ubuntu
  ```

## Project Structure

- `HELLO.cbl`: A basic "Hello, World!" program in COBOL.

## How to Compile and Run

1. Compile the COBOL program:
   ```bash
   cobc -x -o HELLO HELLO.cbl
   ```

2. Run the compiled program:
   ```bash
   ./HELLO
   ```

3. Expected output:
   ```
   Hello World!
   ```

## Compiling other files
   ```bash
   cobc -x -o HELLO HELLO.cbl
   ```
   
   ```bash
   cobc -x -o VARS VARIABLES.cbl
   ```

   ```bash
   cobc -x -o CONDITIONALS CONDITIONALS.cbl
   ```
