if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kolminch/AutoFilter-kdBot /UrlShortner-AutoFilter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /UrlShortner-AutoFilter-Bot
fi
cd /UrlShortner-AutoFilter-Bot
pip3 install -U -r requirements.txt
echo "Starting bot...."
python3 bot.py
