if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KingCobra91/Martinbot.git /Martinbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Martinbot
fi
cd /Martinbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
