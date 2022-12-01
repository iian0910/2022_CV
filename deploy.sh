//deploy.sh
#!/usr/bin/env sh

# 當發生錯誤時終止腳本運行
set -e
# 打包 (Nuxt 以 generate 打包出一個靜態檔)
npm run generate
# 移動至到打包後的dist目錄 
cd dist
# 因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git init
git add -A
git commit -m 'deploy'
# 部署到 https://github.com/iian0910/2022_CV.git 分支為 gh-pages
git push -f https://github.com/iian0910/2022_CV.git master:gh-pages
# 將 dist 資料夾中的內容推送至遠端eric-project的gh-pages分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)
cd -