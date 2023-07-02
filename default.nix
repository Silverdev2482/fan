{
	stdenv,
	...
}: stdenv.mkDerivation {
	pname = "fan";
	version = "v0.0.1";
	buildInputs = [ ];

	src = ./src;

	buildPhase = ''

	'';

	installPhase = ''
		mkdir -p $out/bin
		mv $src/fan $out/bin/fan
	'';

}
