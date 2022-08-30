BOLD='\033[1m'
RESET='\033[0m'

ERRCOLOR='\033[1;33m'
FATCOLOR='\033[1;31m'
SUCCOLOR='\033[1;36m'

if git rev-parse --git-dir > /dev/null 2>&1; then
	if [ -e git.files ]; then
		cat git.files | xargs git add
		printf "${SUCCOLOR}SUCCESS ${RESET}${BOLD} --> ${RESET}Added git files\n"
	else
		printf "${ERRCOLOR}ERROR ${RESET}${BOLD}--> ${RESET}git.files not found\n"
	fi
else
	printf "${FATCOLOR}FATAL ${RESET}${BOLD}--> ${RESET}Not inside a git repository\n"	
fi
