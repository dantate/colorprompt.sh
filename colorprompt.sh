# no hashbang since this is meant to be read inline
# Custom Colorization script using tput method.  Intended only for xterm-256color compatible terminals.
#
# Usage: "source colorprompt.sh [color]" or "source colorprompt.sh [prompt color code] [highlight color code]"
#
# This was built for personal use but i'm putting it out on Github.  If anyone improves upon it, i'd love to see
# the resulting code.   This was done in one morning and it shows.

# This is an old version and has been superseded by "colorprompt" (no .sh) in the saame github repo.

# 2022 Daniel Tate https://github.com/dantate/colorprompt.sh
# A color picker can be found at https://robotmoon.com/bash-prompt-generator/ (unaffiliated)
# revision 1.0.4 | 24 June 2022

LTGRAY=247
DKGRAY=243

re='^[0-9]+$'
if [[ $1 =~ $re ]]
  then
# Set prompt CUSTOM
    if test -n ${1} && test -z ${2}
      then
        echo "error: Must have highlight color parameter if prompt color is manually set"
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
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 33)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 33)\]\\$\
\[$(tput sgr0)\] "
;;

  darkblue)
#Set prompt DARKBLUE
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 33)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 33)\]\\$\
\[$(tput sgr0)\] "
;;

    azure)
# Set prompt AZURE on LIGHT GREY
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 33)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 33)\]\\$\
\[$(tput sgr0)\] "
;;

    darkazure)
# Set prompt AZURE on DARK GREY
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 031)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 031)\]\\$\
\[$(tput sgr0)\] "
;;
    cyan)
# Set prompt CYAN on LT GRAY
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 123)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 123)\]\\$\
\[$(tput sgr0)\] "
;;

    darkcyan)
# Set prompt DK CYAN
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 123)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 123)\]\\$\
\[$(tput sgr0)\] "
;;
    green)
# Set prompt GREEN
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 28)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 28)\]\\$\
\[$(tput sgr0)\] "
;;
    darkgreen)
# Set prompt DARKGREEN
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 28)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 28)\]\\$\
\[$(tput sgr0)\] "
;;
    red)
# Set prompt RED
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 124)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 124)\]\\$\
\[$(tput sgr0)\] "
;;

    darkred)
# Set prompt DARKRED
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 124)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 124)\]\\$\
\[$(tput sgr0)\] "
;;

    gray|grey)
# Set prompt GREY
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf $LTGRAY)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf $LTGRAY)\]\\$\
\[$(tput sgr0)\] "
;;

    orange)
# Set prompt orange
export PS1="\[$(tput setaf $LTGRAY) [\
\[$(tput setaf 214)\u\
\[$(tput setaf $LTGRAY)\]] \h:\w\
\[$(tput setaf 214)\]\\$\
\[$(tput sgr0)\] "
;;
    darkorange)
# Set prompt darkorange
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 214)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 214)\]\\$\
\[$(tput sgr0)\] "
;;

    darkpurple)

# Set prompt darkorange
export PS1="\[$(tput setaf $DKGRAY) [\
\[$(tput setaf 162)\u\
\[$(tput setaf $DKGRAY)\]] \h:\w\
\[$(tput setaf 162)\]\\$\
\[$(tput sgr0)\] "
;;

    help)
echo    usage:
echo    "source colorprompt.sh [prompt color] [highlight color]"
echo    i.e.:
echo    source colorprompt.sh red
echo    source colorprompt.sh 124 243
;;

esac

