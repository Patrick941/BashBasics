gnome-terminal -- csh -c "s3; echo 'Terminal 1'; r;exec csh"
sleep 0.5
gnome-terminal -- csh -c "s3; echo 'Terminal 2'; h;exec csh"
sleep 0.5
gnome-terminal -- csh -c "s3; echo 'Terminal 3'; d;exec csh"
