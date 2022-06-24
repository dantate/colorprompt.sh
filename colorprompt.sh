# no hashbang since this is meant to be read inline

re='^[0-9]+$'
if [[ $1 =~ $re ]]
  then
# Set prompt CUSTOM
    if test -n ${1} && test -z ${2}
      then
        echo "error: Must have highlight color parameter if standard color is set"
      else

export PS1="\[$(tput setaf $1) [\
\[$(tput setaf $2)\u\
\[$(tput setaf $1)\]] \h:\w\
\[$(tput setaf $2)\]\\$\
\[$(tput sgr0)\] "
    fi
fi


if [ -z ${1} ]
then
    echo "usage: source colorprompt.sh color|[custom standard highlight]"
fi

case $1 in
    blue)

#Set prompt BLUE
export PS1="\[$(tput setaf 247) [\
\[$(tput setaf 33)\u\
\[$(tput setaf 247)\]] \h:\w\
\[$(tput setaf 33)\]\\$\
\[$(tput sgr0)\] "
;;

    azure)
# Set prompt AZURE on DARK GREY
export PS1="\[$(tput setaf 026) [\
\[$(tput setaf 33)\u\
\[$(tput setaf 242)\]] \h:\w\
\[$(tput setaf 33)\]\\$\
\[$(tput sgr0)\] "
;;

    darkazure)
# Set prompt AZURE on DARK GREY
export PS1="\[$(tput setaf 026) [\
\[$(tput setaf 031)\u\
\[$(tput setaf 242)\]] \h:\w\
\[$(tput setaf 031)\]\\$\
\[$(tput sgr0)\] "
;;
    cyan)

# Set prompt GREEN
export PS1="\[$(tput setaf 243) [\
\[$(tput setaf 123)\u\
\[$(tput setaf 243)\]] \h:\w\
\[$(tput setaf 123)\]\\$\
\[$(tput sgr0)\] "
;;
    green)
# Set prompt GREEN
export PS1="\[$(tput setaf 243) [\
\[$(tput setaf 28)\u\
\[$(tput setaf 243)\]] \h:\w\
\[$(tput setaf 28)\]\\$\
\[$(tput sgr0)\] "
;;
    red)
# Set prompt RED
export PS1="\[$(tput setaf 243) [\
\[$(tput setaf 124)\u\
\[$(tput setaf 243)\]] \h:\w\
\[$(tput setaf 124)\]\\$\
\[$(tput sgr0)\] "
;;


    help)
echo    usage:
echo    "source colorprompt.sh color|custom [prompt color] [highlight color]"
echo    i.e.:
echo    source colorprompt.sh red
echo    source colorprompt.sh custom 124 243
;;

esac

