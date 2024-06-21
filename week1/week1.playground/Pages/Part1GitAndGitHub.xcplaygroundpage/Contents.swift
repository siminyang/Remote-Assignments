///
/// ** Part 1: Git & GitHub **
///
/// # 1. [GitHub Repository](https://github.com/siminyang/Remote-Assignments.git)
///
/// # 2. Git and GitHub commands
///
/// ## a. git status
/// - 查看目前git儲存庫裡的檔案狀態
/// - 主要用來查看未追蹤(Untracked) / 已修改(modified) / 已暫存(Staged)的檔案
///
/// ## b. git diff
/// - 比較commit後的版本差異處
/// - 用來比較已經提交超過兩個版本的檔案不同的地方
/// - git diff 版本id -- 檔案名稱
///
/// ## c. git add
/// - 將檔案上傳到暫存區，檔案會從未追蹤改成已追蹤，準備進行commit
/// - 指定檔案：git add 檔案名稱.swift
/// - 所有的swift檔：git add *.swift
/// - 所有檔案：git add .
///
/// ## d. git reset
/// - 取消暫存或已提交的檔案
/// - 取消暫存的檔案：git reset HEAD <檔案名稱>
/// - 取消最新提交：git reset HEAD^
///
/// ## e. git commit
/// - 確認暫存區的檔案ok, 將檔案移至提交區（Commited）
/// - git commit -m '此次提交或修改的描述'
 
/// ## f. git log
/// - 檢視所有提交歷史：git log
/// - 查看所有提交歷史的簡化版：git log --oneline
/// - 查看每個提交歷史的差異：git log -p
///
/// ## g. git branch
/// - 管理git repo中的分支
/// - 顯示所有分支(包含local & remote)：git branch -a
/// - 建立新分支：git branch 新分支名稱
/// - 刪除某分支：git branch -d 某分支名稱
///
/// ## h. git merge
/// - 合併某分支到目前所在的分支，會保留完整的提交歷史，主要用在多人協作
/// - git merge 某分支名稱
///
/// ## i. git push [ repo_name ] [ branch_name ]
/// - 將本地位於分支[ branch_name ]的資料推送至repo的某倉庫[ repo_name ]
/// - git push origin main
///
/// ## j. git remote
/// - 管理github的repo
/// - 查看目前在的repo和repo的網址：git remote -v
/// - 新增一個新的repo: git remote add upstream https://github.com/siminyang/新倉庫名稱.git
///
/// ## k. fork
/// - 用來複製別人的repo到自己的repo
 
/// ## l. (Advanced) git rebase
/// - 將某個分支合併到另一個分支上，雖會修改提交歷史但有助於保持提交歷史的線性和清晰，主要是在清理自己的分支時使用
/// - git rebase main
///
/// ## m. (Advanced) git cherry-pick
/// - 選擇性合併提交（只挑自己想要的commit合併到master）
/// - git cherry-pick commit_ID
///
/// ## n. (Advanced) git reflog
/// - 查看所有分支的更動日誌，包含提交、刪除、合併
///
/// ## o. (Advanced) git tag
/// - 為發行的版本貼上標籤，ex. v1.0...
/// - 簡單的標籤：git tag v1.0
/// - 有註解的標籤：git tag -a v1.0 -m "Release version 1.0"
///
/// # 3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
/// - 打開github建立一個新repo
/// - 打開teiminal
/// - 切換至指定檔案夾：cd 指定檔案夾
/// - (第一次用需初始化）：git init
/// - 將本地檔案新增至指定檔案夾的暫存區：git add 檔案名稱
/// - 確認提交檔案：git commit -m '提交描述'
/// - 連接github上的repo: git remote add origin 要推的repo網址
/// - 將分支推到repo上，分支以main為例: git push -u origin main
///
///


