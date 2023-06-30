{
	stdenv,
	raylib,
	...
}: stdenv.mkDerivation {
	pname = "myPackage";
	version = "v0.0.1";
	buildInputs = [raylib];

	src = ./src;

	buildPhase = ''
		gcc main.c -o main
	'';

	installPhase = ''
		mkdir -p $out/bin
		mv main $out/bin/myPackage
	'';

}
