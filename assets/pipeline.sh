#1547884

message="$1"
if [[ -z "${message// }" ]]
    then
        echo "No commit message has been provided"
        echo "Usage: (sh) pipeline.sh <Commit Messgae>"
        exit
fi

echo "(0) Npm Installing"
if npm install; then
    echo "Npm succsesfully installed)"
else
    echo "Install Failed"
    exit
fi 

echo "(1) Building"
if npm run build; then
    echo "Build succeeded"
else
    echo "Build failed"
    exit
fi

echo "(2) Commit and Pushing to repo"
cd ..
git add .
git commit -m "$message"
git push

echo "(3) Application Start"
cd assets
npm run start

    