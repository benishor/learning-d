#!/usr/bin/env rdmd
import std.stdio;

void main() {

	stdout.writeln("This output is obtained from stdout.writeln()");
	writeln("This output is obtained from writeln. It is the shorthand for stdout.writeln()");
	
	int readNumber;
	write("Please input a number: ");
	stdin.readf("%s", &readNumber);
	writeln("Ok, the value we read from stdin.readf() was ", readNumber);

	write("Please input one more number: ");
	readf(" %s", &readNumber); // note the extra space before %s. We're skipping the previous whitespace from the stdin stream 
	writeln("The value we read from readf() was ", readNumber, ". This shows that readf() is simply a shrothand for stdin.readf()");
}
