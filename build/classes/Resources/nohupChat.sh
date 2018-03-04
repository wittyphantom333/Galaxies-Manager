#!/bin/bash

cd $(pwd)/chat

nohup /home/swg/swg-main/chat/chat > startChat.txt 2>&1&

