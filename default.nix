{
	stdenv,
	raylib,
	fetchgit,
	...
}: stdenv.mkDerivation {
	pname = "myPackage";
	version = "v0.0.1";
	buildInputs = [raylib];

	src = ./src;

	buildPhase = ''
		ls -al
		exit 1
	'';

#	src = fetchgit {
#		url = "https://github.com/the-argus/obsidian-tasks-ntfy";
#		rev = "da32e9c116aadbdbc6b5fb49b427fbbc429dff43";
#		sha256 = "0vn88a1dymlc6bzs55asishjx3jw2x7shjp5aidzp8r39nrbhrcy";
#	};

}
