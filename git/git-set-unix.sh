domain="45.76.172.139"

cd ~/git/GNU
git remote add origin git@"$domain":/home/git/GNU.git
git remote set-url --add origin http://github.com/z54/GNU.git
git ps

cd ~/git/Notes
git remote add origin git@"$domain":/home/git/Notes.git
git remote set-url --add origin http://github.com/z54/Notes.git
git ps

cd ~/git/tsinsen
git remote add origin git@"$domain":/home/git/tsinsen.git
git remote set-url --add origin http://github.com/z54/tsinsen.git
git ps

cd ~/git/IMC
git remote add origin git@"$domain":/home/git/IMC.git
git ps

cd ~/git/Notes
git remote add origin yzc@cs3.swfu.edu.cn:/home/staff/yzc/git/Notes.git
git ps