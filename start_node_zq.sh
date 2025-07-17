#!/bin/bash
#Author: Ziqian
#Date: 2025-07

# Exit on error
set -e

# —— 1. 设置默认参数 ——  
PRODUCT_TYPE="LD06"  
COMM_MODE="serial"  
PORT_PATH="/dev/ttyUSB0"  
SERVER_IP_ADDR=""  
SERVER_PORT_ADDR=""

# —— 2. 打印使用说明（显示默认值） ——  
echo "Instructions (using defaults):"
echo "  input [product_type]=${PRODUCT_TYPE}"
echo "  input [communication_mode]=${COMM_MODE}"
echo "  input [serial_port_number]=${PORT_PATH}"
echo "  input [server_ip]=<Enter key>  (defaults to empty)"
echo "  input [server_port]=<Enter key>  (defaults to empty)"
echo ""

# —— 4. 继续后面的逻辑 ——  
LOG_NAME="test$(date +%Y%m%d-%H-%M).log"


#   sudo chmod 777 "${PORT_PATH}"
echo "start node exec (serial mode)"
[ -d "./log" ] || { mkdir log; echo "create ./log/"; }
echo "output log to ./log/${LOG_NAME}"
./build/ldlidar_stl_node ${PRODUCT_TYPE} serialcom ${PORT_PATH} > ./log/${LOG_NAME}