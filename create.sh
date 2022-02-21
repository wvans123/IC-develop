sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"
dfx new --no-frontend myproject
cd myproject
echo '<html><body><h1>Hello World!</h1></body></html>' > src/myproject_assets/assets/index.html
dfx start --background
dfx deploy
