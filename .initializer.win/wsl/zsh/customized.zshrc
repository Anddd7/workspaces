alias tg=terragrunt
alias docker=podman
alias docker-compose=podman-compose

b64() { echo -n "$1" | base64 -w 0; }
b64d() { echo -n "$1" | base64 -d; }

# encrypt k8s secret yaml
b64k8s() {
  local input_file="$1"
  local output_file="$2"

  if [ -z "$input_file" ] || [ -z "$output_file" ]; then
    echo "Usage: encrypt_secret <input_file> <output_file>"
    return 1
  fi

  if [ ! -f "$input_file" ]; then
    echo "Input file not found: $input_file"
    return 1
  fi

  # 提取data部分，进行Base64加密
  cat "$input_file" | yq eval -P '.data |= with_entries(.value |= @base64)' - >"$output_file"

  echo "Secret encrypted and saved to: $output_file"
}

# decrypt k8s secret yaml
b64dk8s() {
  local input_file="$1"
  local output_file="$2"

  if [ -z "$input_file" ] || [ -z "$output_file" ]; then
    echo "Usage: decrypt_secret <input_file> <output_file>"
    return 1
  fi

  if [ ! -f "$input_file" ]; then
    echo "Input file not found: $input_file"
    return 1
  fi

  cat "$input_file" | yq eval -P '.data |= with_entries(.value |= @base64d)' - >"$output_file"

  echo "Secret decrypted and saved to: $output_file"
}

# create a temp folder and change into it
tmpnb() {
  current_time=$(date +"%Y%m%d_%H%M%S")
  folder_name=".tmpnb_$current_time"

  mkdir "$folder_name"

  cd "$folder_name"

  echo "Created temp notebook: $folder_name and changed into it."
}

# clear the color code from zsh output
nocolor() {
  sed -i 's/\[[0-9;]*m//g' "$1"
}

# select branch to delete
gbds() {
  local branches branch

  # 使用 fzf 从当前 Git 仓库中选择分支，不包含 master 和 main
  branches=$(git branch --format="%(refname:short)" | grep -v -E 'master|main' | fzf --multi)

  # 如果没有选择任何分支，则退出
  [[ -z "$branches" ]] && return

  # 循环删除选定的分支
  for branch in $branches; do

    # 删除本地分支
    git branch -D "$branch" 2>/dev/null

    # 删除远程分支
    git push origin --delete "$branch" 2>/dev/null
  done

  echo "Branch(es) deleted: $branches"
}
