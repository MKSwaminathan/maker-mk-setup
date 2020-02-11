#!/bin/bash

gg() {
    echo "Googling: $@"
    search=""
    for term in $@; do 
        search="$search%20$term"
    done 
    open "http://www.google.com/search?q=$search"
}

web() {
    query="$@"
    echo "Navigating the web to: $@"
    if [ "$query" = "http.*" ]; then
        open "$query"
    fi 
    if [ "$query" = "www.*" ]; then
        open "http://$query"
    else 
        open "http://www.$query"
    fi 
}

youtube() {
    echo "Searching youtube for: $@"
    query=""
    for keyword in $@; do 
        query="$query+$keyword"
    done
    open "https://www.youtube.com/results?search_query=$query"    
}

canvas() {
    open https://utexas.instructure.com
}

chess() {
    open https://chess.com/home
}
