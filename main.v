module main

import os

fn main() {
	if os.args.len < 2 {
		help(os.args[0])
	}
	else {
		// Mutable string to past args > 0 into
		mut cow_say := ""
		// Build string of complete cow say
		for i, arg in os.args{
			if i > 0{
				cow_say += arg + " "
			}
		}
		// What does the cow say?
		println(cowgen(cow_say))
	}
}

fn cowgen(cow_say string) string {
	mut cow := cow_say
	cow += ('
        \\   ^__^
         \\  (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||
	')
	return cow.replace('\n\t', '\n')
}

fn help(program_name string){
	println("${program_name} <What does the cow say? Moo.>")
}