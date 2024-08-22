# Image Analysis with AI

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This script uses an AI chatbot to analyze images and describe what it sees. Useful to provide context from pictures to LLM's without vision features.


## Usage

1. Run the script, passing the path to your image file or directory as an argument:
   - For a single image: `./main.sh image.jpg`
   - For a directory of images: `./main.sh /path/to/images/`


## Example

```
./main.sh my_dog.jpg
```

This will send the image `my_dog.jpg` to the AI chatbot and print its response.


## Requirements

* **Unix systems:** Rust programming language - [https://www.rust-lang.org/](https://www.rust-lang.org/)
* **Unix systems:** Cargo (Rust's package manager) - usually installed with Rust
* **Windows:** Scoop - [https://scoop.sh/](https://scoop.sh/)
* You can let the script try to install these dependencies or install them yourself before running the script.


## Author

Gustavo Ilha Morais
