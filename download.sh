#!/bin/bash

# Set flags to false by default
run_cunt=false
run_dnb=false
run_hyperpop=false
run_plugg=false
run_good=false
run_soundcloud=false
run_all=false
run_rap=false
run_ya=false


# Loop through command-line arguments
while getopts "cdhpgsry" opt; do
  case $opt in
    c)
      run_cunt=true
      ;;
    d)
      run_dnb=true
      ;;
    h)
      run_hyperpop=true
      ;;
    p)
      run_plugg=true
      ;;
    g)
      run_good=true
      ;;
    s)
      run_soundcloud=true
      ;;
    r)
      run_rap=true
      ;;
    y)
      run_ya=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# If no flags were provided, run all subdirectories by default
if [ $OPTIND -eq 1 ]; then
  run_cunt=true
  run_dnb=true
  run_hyperpop=true
  run_plugg=true
  run_good=true
  run_soundcloud=true
  run_rap=true
  run_ya=true
  run_all=true

fi

# Run selected subdirectories
if [ "$run_all" = true ]; then
    figlet -f big run all
fi

# Run selected subdirectories
if [ "$run_cunt" = true ]; then
    figlet -f small cunt
    cd cunt
    spotdl https://open.spotify.com/playlist/5Zn7lFJfT0l3oS4x6OJsbW
    cd ..
fi

if [ "$run_dnb" = true ]; then
    figlet -f small dnb
    cd dnb
    spotdl https://open.spotify.com/playlist/2zl3J6kV0635xcqlFKBwhd
    cd ..
fi

if [ "$run_hyperpop" = true ]; then
    figlet -f small hyperpop
    cd hyperpop
    spotdl https://open.spotify.com/playlist/1rVooPvgTfkGtxngwc4B9b
    cd ..
fi

if [ "$run_plugg" = true ]; then
    figlet -f small plugg
    cd plugg
    spotdl https://open.spotify.com/playlist/7FAH28g3CrXb7pPXeSkKKy
    cd ..
fi

if [ "$run_good" = true ]; then
    figlet -f small pretty music
    cd simply-good
    spotdl https://open.spotify.com/playlist/2MPVd5sHs79uqEAr6Znke8
    cd ..
fi

if [ "$run_soundcloud" = true ]; then
    figlet -f small soundcloud
    cd soundcloud-likes
    scdl -l https://soundcloud.com/ashank-behara --download-archive archive.txt -fc
    cd ..
fi

if [ "$run_rap" = true ]; then
    figlet -f small rap
    cd rap
    spotdl https://open.spotify.com/playlist/428GPktAt8tqcguSy6fqf2
    cd ..
fi

if [ "$run_ya" = true ]; then
    figlet -f small ya!
    cd ya
    spotdl https://open.spotify.com/playlist/4QEMlBgxzagHeGqDlu94cl
    cd ..
fi