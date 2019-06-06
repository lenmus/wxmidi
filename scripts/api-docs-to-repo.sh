#! /bin/bash
#------------------------------------------------------------------------------
# Copy files from doxygen output dir to local repo, commit the changes
# and push to master repo for updating the website
#
# usage: ./api-docs-to-repo.sh
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
# main line starts here

E_SUCCESS=0         # success
E_NOARGS=65         # no arguments
E_BADPATH=66        # not running from lomse/trunk/scripts
E_ERROR=99          # any other error

enhanced="\e[7m"
reset="\e[0m"


#get current directory and check we are running from <root>/scripts
#For this I just check that "src" folder exists
scripts_path="${PWD}"
root_path=$(dirname "${PWD}")
if [[ ! -e "${root_path}/src" ]]; then
    echo "Error: not running from <root>/scripts"
    exit $E_BADPATH
fi

#paths
projects=${scripts_path%/lomse/trunk/scripts}
local_repo="${projects}/lenmus-io/wxmidi/"
from="${projects}/wxmidi/zz_build-api/html"
echo "projects = ${projects}"
echo "local_repo = ${local_repo}"
echo "from = ${from}"

#delete current content
echo -e "${enhanced}Delete old content${reset}"
cd "${local_repo}" || exit $E_BADPATH
rm * -r
echo "-- Local repo is now empty"
echo ""
cd ${local_repo}

#copy the new content
echo -e "${enhanced}Copy the new content${reset}"
echo "cp -ar ${from}/*.* ."
cp -ar ${from}/* .
echo "-- Files copied"
echo ""

#commit changes and push to origin
echo -e "${enhanced}Commit changes and push to origin${reset}"
git add .
git add -u
git commit -m"Update API documentation"
git push origin gh-pages
echo "-- Remote repo updated"
echo ""

echo "Done. Visit https://lenmus.github.io/wxmidi/"
exit $E_SUCCESS


