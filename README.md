# Rubix 0.0.2

A very simple (and barely-functioning) Ruby runner for Elixir

[Development status is on Trello.](https://trello.com/b/PTnz2ViQ/rubix)

## Synopsis

    iex> ruby_code = """
    ...> def hello()
    ...>   puts "Hello, world!"
    ...> end
    ...> hello()
    ...> """
    "def hello()\n  puts \"Hello, world!\"\nend\nhello()\n"
    iex> Rubix.eval ruby_code
    {:ok, "Hello, world!\n"}
    iex> Rubix.eval_file "some_ruby_script.rb"
    {:ok, "I'm the output of a Ruby program!"}

## Description

Rubix is a very barebones wrapper around `ruby` (the program) that
executes Ruby (the language) and spits out a result.

Note that, for obvious reasons, you'll need `ruby` installed.

## Changelog

### 0.0.2

* Capture STDERR from spawned Ruby interpreters
* Add a changelog

### 0.0.1

* First commit
* Run Ruby code stored in strings or files (using `Rubix.eval/1` and
  `Rubix.eval_file/1`, respectively)

## Todo

* Do something actually useful (right now there's a significant lack
  of goodies like communication with the spawned Ruby process, though
  there are supposedly better tools for that anyway)

## License

Copyright (c) 2015 Ryan S. Northrup

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
