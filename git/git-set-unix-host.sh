# domain="45.76.172.139:/home/git/"
# git remote add origin git@45.76.172.139:/home/git/tsinsen.git

domain = "github.com/z54/"

cd ~/git/GNU
git remote add origin git@"$domain"GNU.git
git remote set-url --add origin http://github.com/z54/GNU.git
git ps

cd ~/git/Notes
git remote add origin git@"$domain"Notes.git
git remote set-url --add origin http://github.com/z54/Notes.git
git ps

cd ~/git/tsinsen
git remote add origin git@"$domain"tsinsen.git
git remote set-url --add origin http://github.com/z54/tsinsen.git
git ps

# cd ~/git/Notes
# git remote add origin yzc@cs3.swfu.edu.cn:/home/staff/yzc/git/Notes.git
# git ps