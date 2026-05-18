function adminer --description 'Start Adminer Docker containers and open the web interface'
    # Change to the project directory
    cd /home/richard/coding/adminer || return

    # Start the services using the Taskfile
    task up

    # Wait a moment for the server to be ready (optional but helpful)
    sleep 1

    # Open the webpage (using xdg-open for Linux)
    xdg-open "http://localhost:8080"
end
