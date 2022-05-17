echo "(0) Prepare enviroment"

echo "(1) Npm Installing"
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

echo "(3) Application Start"
npm run start


    