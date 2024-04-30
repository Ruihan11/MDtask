#github synchronize
git add .
git commit -m "Automatic commit message"
git push origin main

#generate png and display on windows desktop
pandoc task.md -o task.html
wkhtmltoimage task.html task.png
/mnt/d/your_dir_to_rainmeter/Rainmeter.exe \!Refresh "Calendar"

rm task.html
rm task.png