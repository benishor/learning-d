#!/usr/bin/env rdmd
import std.stdio;
import std.string;
import std.range; // needed for walkLength
import std.utf; // needed for toUTF8 et co

void main() {

	string s1 = "Adrian Scripcă"; // UTF-8
	wstring s2 = "Adrian Scripcă"; // UTF-16
	dstring s3 = "Adrian Scripcă"; // UTF-32

	writeln("Writing the char[] string yields: ", s1);
	writeln("Writing the wchar[] string yields: ", s2);
	writeln("Writing the dchar[] string yields: ", s3);

	writeln();

	writeln("Length of char[] string is: ", s1.length, " and the walking distance is ", s1.walkLength);
	writeln("Length of char[] string is: ", s2.length, " and the walking distance is ", s2.walkLength);
	writeln("Length of char[] string is: ", s3.length, " and the walking distance is ", s3.walkLength);

	string first = "bala";
	string second = "ala";

	if (first < second) {
		writeln(first, " comes before ", second, " when comparing strings");
	} else {
		writeln(second, " comes before ", first, " when comparing strings");
	}

	writeln("When asking if ", first, " is equal to ", second, " we get ", first == second);

	auto third = "ala";
	writeln("When asking if ", second, " is equal to ", third, " we get ", second == third);

	// this would err
//	writeln("When comparing a unicode string with the same unicode dstring we get ", s1 == s3);

	writeln(toLower(s1), " is the lowercase version of ", s1);
	writeln(toUpper(s2), " is the uppercase version of ", s2);

	string s4 = toUTF8(s3); 
	writeln("We converted a dchar string [", s3, "] to char[] string with toUTF8() and obtained [", s4, "]");

	string hello = "HєllѲ, ШѲrld!";
	writeln("Although [", hello, "] is UTF-8 encoded, we can foreach() through every unicode codepoint by specifying dchar as the iterator type");
	foreach(int i, dchar c ; hello)
		writefln("Index %d: ’%s’", i, c);

}

