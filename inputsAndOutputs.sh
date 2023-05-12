touch output.txt

tmux new-session -d -s chat_session './chat > output.txt'

tail -f output.txt &

tmux send-keys -t chat_session "hello" Enter