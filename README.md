# Adminer Docker Setup

This repository contains a local setup for [Adminer](https://www.adminer.org/), a lightweight database management tool, running via Docker Compose alongside a MySQL database.

## Architecture

* **Docker Compose:** Orchestrates the `adminer` and `db` (MySQL) containers.
* **Adminer:** Configured with the `rmsoft` design theme.
* **MySQL:** A local MySQL 5.6 instance.
* **Taskfile:** Uses `go-task` to provide simple command-line shortcuts for Docker operations.
* **Fish Shell:** Includes a custom Fish function for a streamlined startup workflow.

## Prerequisites

* [Docker](https://docs.docker.com/get-docker/) and Docker Compose
* [Task](https://taskfile.dev/) (optional, but recommended for using `Taskfile.yml`)
* [Fish Shell](https://fishshell.com/) (optional, if you want to use the shortcut function)

## Configuration & Secrets

The default database path is managed using an .env file. read in **`compose.yaml` (Environment Variables)**. **`.env` (Recommended for flat secrets)** contians `ADMINER_DEFAULT_SERVER`.

## Usage

### Using Task (Recommended)

If you have `task` installed, you can manage the environment using the included `Taskfile.yml`:

* `task up`: Starts all services in the background.
* `task down`: Stops and removes all containers.
* `task restart`: Restarts all services.
* `task logs`: Follows logs from all services.
* `task sh:db`: Opens a bash shell in the database container.
* `task sh:adminer`: Opens a bash shell in the adminer container.

### Using the Fish Shell Shortcut

A handy Fish shell function is provided in `adminer.fish` to start the environment and automatically open your web browser.

1. Source the function (or copy it to your `~/.config/fish/functions/` directory):

    ```fish
    source adminer.fish
    ```

2. Run the function:

    ```fish
    adminer
    ```

    This will navigate to the project directory, start the containers using `task up`, and open `http://localhost:8080` in your default browser.

### Manual Docker Commands

If you prefer not to use Task or Fish, you can use standard Docker Compose commands:

* Start: `docker compose up -d`
* Stop: `docker compose down`

## Accessing Adminer

Once the containers are running, access Adminer at:

**`http://localhost:8080`**
