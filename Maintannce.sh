echo "(0) Appending to all .ts files"
shopt -s globstar
for filename in **/*.ts; do
  sed -i '1i//Name: Pasindu Danawala Gamage, ID: 1547884' "$filename"
done

echo "(1) Commit and Pushing to repo"
cd ..
git add .
git commit -m "$message"
git push