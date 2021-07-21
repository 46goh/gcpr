function gppr -d "git pull to pull request branch"
    set branchname (git name-rev --name-only HEAD)
    git fetch origin refs/$branchname/head
    git checkout $branchname
    git merge FETCH_HEAD
end
