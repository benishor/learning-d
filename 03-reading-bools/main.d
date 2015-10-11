#!/usr/bin/env rdmd
import std.stdio;
import std.conv;
import std.string;

void main() {

	stdout.writeln("This output is obtained from stdout.writeln()");
	writeln("This output is obtained from writeln. It is the shorthand for stdout.writeln()");
	
	int readNumber;
	write("Please input a number: ");
	stdin.readf("%s", &readNumber);
	writeln("Ok, the value we read from stdin.readf() was ", readNumber);

	write("Please input one more number: ");
	// note the extra space before %s. We're skipping the previous whitespace from the stdin stream 
	readf(" %s", &readNumber); 
	writeln("The value we read from readf() was ", readNumber, 
			". This shows that readf() is simply a shorthand for stdin.readf()");


	bool willItBeOk = read_bool("Are things going to be ok? ");
	writeln(willItBeOk ? "I knew it!" : "You're wrong. They *will* be ok!");
}

bool read_bool(string message) {
	write(message, "(true/false): ");

	string userInput;
	while (userInput.length == 0) {
		userInput = chomp(readln());
	}

	bool result = to!bool(userInput);
	return result;
}
