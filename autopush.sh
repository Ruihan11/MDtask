
rm task.png
#github synchronize
git add .
git commit -m "Automatic commit message"
git push origin main

#generate png and display on windows desktop
sed -n '1,30p' task.md | pandoc -f markdown -t html -o task.html
node html2png.js

/mnt/d/your_dir_to_rainmeter/Rainmeter.exe \!Refresh "Calendar"

rm task.html
