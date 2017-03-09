# Define the height in px of the top system-bar:
TOPMARGIN=27

# Sum in px of all horizontal borders:
RIGHTMARGIN=102

# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

# New width and height
W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN ))
H=$(( $SCREEN_HEIGHT - 2 * $TOPMARGIN ))

# X, change to move left or right:

# Moving to the right half of the screen:
X=$(( $SCREEN_WIDTH / 2 ))
# Moving to the left:
# X=0; 

Y=$TOPMARGIN

wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
# To move to the left, just change the X-Line to X=0. (If you use Ubuntu Unity, you need to adapt RIGHTMARGIN, too. I use RIGHTMARGIN=102)

# Run the nvidia-smi with watch
# This watches sensors to output the gpu temperature every 2 seconds
watch nvidia -q -d temperature
