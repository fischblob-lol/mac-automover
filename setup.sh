# beta, expect bugs dont rely on this 


echo "this script is in beta, i wouldnt recommend relying on it for now"
read -p "would you like to proceed? (Y/N) " answer

case "$answer" in
    [Yy]* )
        echo "ok, ill clone the repository"
        git clone https://github.com/fischblob-lol/mac-automover
        echo "repository should be cloned now, i will execute the build script"
        echo "just kidding i dont have a build script"
        ;;
    [Nn]* )
        echo "ok, i will abort"
        exit 1
        ;;
    * )
        echo ":"
        ;;
esac
