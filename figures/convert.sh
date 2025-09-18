set -e

function crop-image() {
  FILE=$1
  magick $FILE -shave 10%x12% /tmp/out.png
  cp $FILE $FILE.backup
  mv /tmp/out.png $FILE
}

crop-image dql-shared.0.png
crop-image dql-shared.1.png
crop-image dql-unshared.0.png
crop-image dql-unshared.1.png
