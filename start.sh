if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HarshGodxpro/testing-repo-2.git /spidyauto
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /spidyauto
fi
cd /spidyauto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
