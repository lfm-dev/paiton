# paiton

A simple script to manage your Python virtual environments

## Installation

```bash
wget https://raw.githubusercontent.com/lfm-dev/paiton/main/paiton.sh
sudo chmod a+rx paiton.sh
sudo mv paiton.sh /usr/local/bin/paiton
```

## Usage

### Create a new virtual environment:

```bash
paiton create v_env
```

### Activate virtual environment:

```bash
source paiton v_env
```

### Delete virtual environment

```bash
paiton delete v_env
```
