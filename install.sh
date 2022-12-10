


ROOT_DIR="~/.vvcjw"
if [ -d "$DIR" ]; then
    echo ".vvcjw exists."
else
    git clone --single-branch https://github.com/vvcjw/vvcjw.git ~/.vvcjw
fi


