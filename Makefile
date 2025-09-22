-include .env

# Default target
all: build

# Compile contracts
build:
	forge build

# Run all tests
test:
	forge test -vvv

# Run only a specific test (set NAME in terminal: make test-match NAME=testFunctionName)
test-match:
	forge test --match-test $(NAME) -vvvv

# Deploy contract to Sepolia
deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe \
		--rpc-url $(SEPOLIA_RPC_URL) \
		--private-key $(PRIVATE_KEY) \
		--broadcast \
		--verify \
		--etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

# Deploy contract to local anvil
deploy-local:
	forge script script/DeployFundMe.s.sol:DeployFundMe \
		--rpc-url http://127.0.0.1:8545 \
		--private-key $(PRIVATE_KEY) \
		--broadcast

# Run local anvil blockchain
anvil:
	anvil -p 8545

# Format Solidity code
format:
	forge fmt

# Clean cache & artifacts
clean:
	forge clean

# Check test coverage
coverage:
	forge coverage
