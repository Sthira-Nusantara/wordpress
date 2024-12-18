# WordPress Docker Compose Setup

This repository provides a Docker Compose configuration for setting up a WordPress instance with MySQL and Nginx. It
includes the UpdraftPlus plugin for managing backups of your WordPress site.

## Features

-   **MySQL Database**: Uses MySQL 8.0 for data storage.
-   **WordPress**: Runs WordPress 6.7.1 with PHP-FPM on Alpine Linux.
-   **Nginx Web Server**: Serves the WordPress application.

## Mandatory Plugin

-   **UpdraftPlus Plugin**: For Backup/Restore purpose. The backup file will be mounted at `backup` folder

## Getting Started

To get started, clone the repository, configure your environment variables in the `.env` file, execute `start.sh` file,
and you ready to go.
