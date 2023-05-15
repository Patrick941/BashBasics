gnome-terminal -- csh -c "s2; echo 'Terminal 1'; h; exec csh"
sleep 0.5
gnome-terminal -- csh -c "s2; echo 'Terminal 2'; d; exec csh"
