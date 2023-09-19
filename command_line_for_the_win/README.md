# Commandline for the win

## Introduction
This is an optional task at alx to sharpen one's commandline skills by doing challenges on `cmdchallenge.com` The screenshots to prove the challenges have been completed are then added to the sandbox environment using `sftp`

## Secure File Transfer Protocol (SFTP)
This is a secure way to share files from a machine to the next. The method is encrypted and generally safer than FTP.

## How to upload the files

#### 1. Check if the computer is connected to the internet

```sh
    ~$ ping hostname.com
```

#### 2. Check if the SFTP commandline utility is installed, else install it (installation depends on operating system)

```sh
    ~$ sftp --help
```

#### 3. Obtain the following SFTP credentials from the target host:

```sh
    . Username
    . Hostname
    . Password 
```

#### 4. Using the obtained credentials, make a SFTP connection

```sh
    ~$ sftp username@host
```

Replace ```username``` and ```host``` with the obtained hostname and username

Confirm the authenticity of the host if prompted to do so then enter the ```password```

#### 5. Navigate the desired directory, in this case ```/root/alx-system_engineering-devops``` and create the directory ```commandline_for_the_win```

```sh
    sftp> cd /root/alx-system_engineering-devops
    sftp> mkdir commandline_for_the_win
```

#### 6. Transfer the desired files using the ```put``` command

```sh
    sftp> put ~/Pictures/Screenshots/0-first_9_tasks.png
    sftp> put ~/Pictures/Screenshots/1-next_9_tasks.png
    sftp> put ~/Pictures/Screenshots/2-next_9_tasks.png
```

#### 7. Login to the sandbox and confirm the upload

```sh
    ~$ cd /root/alx-system_engineering-devops/command_line_for_the_win/ ; ls -l *.png
```

#### 8. Exit the terminal using the ```exit``` command
```sh
    sftp> exit 
```

And you are good to go
