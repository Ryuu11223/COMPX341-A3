#1547884
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
message="$1"
if [[ -z "${message// }" ]]
    then
        message=$"COMPX341-22A-A3 Committing from CI/CD Pipeline"
fi

cd ..
git add .
git commit -m "$message"
git push

echo "(3) Application Start"
cd assets
npm run start

    