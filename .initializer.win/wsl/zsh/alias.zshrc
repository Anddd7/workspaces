# manage the alias and shorthand functions

alias tg=terragrunt
alias docker=podman
alias docker-compose=podman-compose

b64() {
  echo -n "$1" | base64 -w 0
}
b64d() {
  echo -n "$1" | base64 -d
}
# 加密Secret YAML文件的data部分
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
# 解密Secret YAML文件的data部分
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

  # 提取data部分，进行Base64解密
  cat "$input_file" | yq eval -P '.data |= with_entries(.value |= @base64d)' - >"$output_file"

  echo "Secret decrypted and saved to: $output_file"
}
# temp notebook
tmpnb() {
  # 获取当前时间，并格式化为 YYYY-MM-DD_HH-MM-SS
  current_time=$(date +"%Y%m%d_%H%M%S")

  # 创建以当前时间为名的文件夹
  folder_name=".tmpnb_$current_time"
  mkdir "$folder_name"

  # 进入新创建的文件夹
  cd "$folder_name"

  # 输出提示信息
  echo "Created temp notebook: $folder_name and changed into it."
}
