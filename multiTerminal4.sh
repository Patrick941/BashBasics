gnome-terminal -- csh -c "s4; echo 'Terminal1'; r; exec csh"
sleep 0.5
gnome-terminal -- csh -c "s4; echo 'Terminal2'; h; exec csh"
sleep 0.5
gnome-terminal -- csh -c "s4; echo 'Terminal3'; h; exec csh"
sleep 0.5
gnome-terminal -- csh -c "s4; echo 'Terminal4'; d; exec csh"
sleep 0.5
