# scripts
scripts is a repository I use to store my bash script files. This mainly serves as a backup of useful script files, but if you wish to install them the steps are below the scripts table.
>NOTE:
I can't promise that all these scripts will run correctly for you, especially since some of them are using certain dependencies related to my hardware (i.e. `temps.sh` which uses both `lm-sensors` and `nvidia-smi`). The scripts will obviously tell you when trying to run the commands if you don't have the dependencies installed needed, but some dependencies just may not be compatible with your hardware (i.e. I have a nvidia GPU, you may not).

---

## Table

| Script        | Function      |
| ------------- |:-------------:|
| temps         | opens terminals that watch cpu and gpu temperatures   |
| git-push      | adds everything, you enter a commit, and it pushes everything |
| done          | gives a desktop notification that your process is done |

*Please* read the first comments in the scripts to get more details on how to use them or what they do.


---

## Install

>NOTE: The scripts are installed in `/usr/local/bin` since this folder is the recommended place for user scripts (system and program scripts go in the other bin folders). The local user bin is also already included in the $PATH, meaning that you can simply run the scripts by typing `NAME.sh`, where `NAME` is the name of the script, from any directory inside the terminal. For example, I could do `temps.sh` to run the temps script.

*One line command:*
```
sudo chown $USER:$USER /usr/local/bin && cd /usr/local/bin && wget https://codeload.github.com/ConnerFrancis/scripts/zip/master && unzip -j master && rm ./master && chmod +x *.sh
```
>NOTE: You don't have to change $USER or anything in the command (unless you want to install in another folder).

*Step by step:*

1. Set the owner of `/usr/local/bin` to the current user (which in bash is accessable through variable `$USER`) to allow the use of the scripts from anywhere

    ```
    sudo chown $USER:$USER /usr/local/bin
    ```
2. Navigate to `/usr/local/bin`

    ```
    cd /usr/local/bin
    ```

3. Download the repository

    ```
    wget https://codeload.github.com/ConnerFrancis/scripts/zip/master
    ```
4. Unzip the downloaded package

    ```
    unzip -j master
    ```
5. Remove the package zip

    ```
    rm ./master
    ```
6. Make all scripts in `usr/local/bin` executable

    ```
    chmod +x *.sh
    ```
