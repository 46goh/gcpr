function gcpr -d "git checkout a pull request"
    git checkout pull/$argv[1]
    if test $status != 0
        git fetch origin refs/pull/$argv[1]/head
        git checkout -b pull/$argv[1] FETCH_HEAD
    end
end
