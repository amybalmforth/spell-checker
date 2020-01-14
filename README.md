Megasoftweird - word processor
Product: spell checker

Input string - no min/max - Only letters
Check for spelling mistakes - may not be spelt incorrectly

Ex input: "Any string" / "Any striing"
Ex output: "Any string" / "Any ~striing~"

Should ignore case except for I

Test cases:

"" > ""
"a" > "a"
"an" > "an"
"I" > "I"
"i" > "~i~"
"b" > "~b~"
"c" > "~c~"
"ab" > "~ab~"
"and" > "and"
"aaa" > "~aaa~"
"as an" > "as an"
"ab b" > "~ab~ ~b~"
"as we are" > "as we are"
"ab b b" > "~ab~ ~b~ ~b~"
"and abb" > "and ~abb~"
