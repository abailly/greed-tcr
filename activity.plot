set xdata time
set timefmt "%H:%M:%S"
set xrange ["19:44:00":"20:31:00"]
set datafile separator ","
map_color(string) = (string eq 'reset' ? 0 : string eq 'commit' ? 1 : 2)
set palette maxcolors 2
set palette model RGB defined ( 0 "red", 1 "green")
set style fill solid 1.0
unset colorbox
set term png size 1280,800
set output 'activity.png'
plot 'stats' using 1:($3+$4):(map_color(stringcolumn(2))) t 'lines changed' w boxes pal
