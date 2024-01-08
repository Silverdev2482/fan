{
	description = "Extreamly basic shell script/wrapper to set the fan to max speed via sysfs and practice making packages";

	inputs = {
		nixpkgs = {
			url = github:nixos/nixpkgs/nixos-unstable;
		};
	};

	outputs = {
		self,
		nixpkgs,
	}: let
		system = "x86_64-linux";
		pkgs = import nixpkgs { inherit system;};
	in {
		packages.${system} = {
			fan = pkgs.callPackage ./. {};
			default = self.packages.${system}.fan;
		};
	};
}
