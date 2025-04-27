# DID CLI

A simple command-line tool for managing Decentralized Identifiers (DIDs), issuing Verifiable Credentials (VCs), and creating/verifying Verifiable Presentations (VPs) on **Hedera** using Ethereum-compatible JSON-RPC.

## Prerequisites

- Node.js (v18+ recommended)
- A Hedera-compatible JSON-RPC endpoint
- A `.env` file with the following variables:

```env
PRIVATE_KEY=your-private-key
HEDERA_RPC=https://your-hedera-jsonrpc-endpoint
```

## Installation

```bash
git clone https://your-repo-url.git
cd your-repo-folder
npm install
```

Ensure your `.env` file is correctly set up before using the CLI.

## Usage

Run the CLI using:

```bash
node index.js <command> [options]
```

Or add executable permissions and run:

```bash
chmod +x index.js
./index.js <command> [options]
```

## Commands

### Deploy DID Registry

Deploys a new DID Registry smart contract.

```bash
./index.js deploy
```

---

### Create a DID

Registers a new DID on the deployed registry. You can optionally specify a DID; otherwise, a random one is generated.

```bash
./index.js did:create  -r <registry-address> [did]
```

### Get Controller of a DID

Fetches the controller address associated with a DID.

```bash
./index.js did:get-controller -r <registry-address> <did> 
```


---

### Update Controller of a DID

Updates the controller of a DID to a new address. If a new controller is not specified, a random one is generated.

```bash
./index.js did:update-controller -r <registry-address> <did> [newController] 
```

### Issue a Verifiable Credential

Issues a new Verifiable Credential (VC).

```bash
./index.js vc:issue -s <subject-did> -r <registry-address> --claims-file '<path-to-json-containing-credential>'
```

---

### List all verifiables Credential

Lists all the verifiable credentials stored in the local wallet

```bash
./index.js vc:list
```
---

### Create a Verifiable Presentation

Creates a Verifiable Presentation (VP) bundling one or more VCs.

```bash
./index.js vp:create --reveal-file 'path-to-json-with-information-about-fields-to-reveal'
```

---

### Verify a Verifiable Presentation

Verifies a Verifiable Presentation (VP).

```bash
./index.js vp:verify -p <path-to-json-with-vp> -r <registry-address>
```

---

## Environment Variables

Make sure your `.env` file contains:

```env
PRIVATE_KEY=your-private-key
HEDERA_RPC=https://your-hedera-jsonrpc-endpoint
```

---

