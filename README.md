# Nixvim Standalone

This template gives you a good starting point for configuring nixvim standalone.

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```
nix run .



Mohon di perhatikan, ini menggunakan standalone module
Untuk memulai anda harus menginisial terlebih dahulu dengan menjalankan command dibawah ini

## command di bawah akan generate folder config, flake.nix ##
nix flake init --template github:nix-community/nixvim

## setelah itu, untuk mengaktifkan atau running, silahkan jalankan command dibawah ini
nix run .

Requirement :

- Device sudah terinstall nix, nix-darwin atau nixos
- Device system x86_64-linux | aarch64-linux | x86_64-darwin | aarch64-darwin 


seandainya ingin mencoba saja, silahkan gunakan cara seperti dibawah ini!

     nix run 'github:ch4iril/niXvim'



Jika ada kesulitan, silahkan baca dokumentasinya di 
https://nix-community.github.io/nixvim

jika ada keinginan, pasti bisa!!


thanks





```
