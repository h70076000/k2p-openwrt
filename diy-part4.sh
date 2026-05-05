#!/bin/bash


echo "===== 直接覆盖 feeds.conf.default 为新配置 ====="
cat > feeds.conf.default << 'EOF'
src-git kenzo https://github.com/h70076000/openwrt-packages
EOF

echo "===== 替换后的 feeds.conf.default 内容 ====="
cat feeds.conf.default

echo "===== feeds.conf.default 覆盖完成 ====="

# turboacc
curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh



# OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git OpenClash
