#!/bin/bash
# 投流与视频获客总路由系统 - 每周深度补充脚本
# 用途：每周日晚上 22:30 执行，深度补充知识库内容
# 安装方式：复制 plist 到 ~/Library/LaunchAgents/ 并执行 launchctl load

set -euo pipefail

VAULT="/Users/mac/ai-workspaces/AI-Workspace-Obsidian"
GOV_DIR="$VAULT/16-知识库治理"
REPORT_DIR="$GOV_DIR/投流知识库治理记录"
DATE=$(date +"%Y-%m-%d")
LOG_FILE="$REPORT_DIR/weekly-supplement-$DATE.log"

echo "[$(date)] Starting weekly deep supplement..." | tee "$LOG_FILE"

# Step 1: Check JSON routing files validity
echo "[$(date)] Step 1: Validating JSON routing files..." | tee -a "$LOG_FILE"
JSON_FILES=(
  "$GOV_DIR/routing_rules_facebook_ads.json"
  "$GOV_DIR/routing_rules_douyin_juliang_ads.json"
  "$GOV_DIR/routing_rules_tiktok_ads.json"
  "$GOV_DIR/routing_rules_overseas_video_leads.json"
  "$GOV_DIR/routing_rules_wechat_channels_leads.json"
  "$GOV_DIR/routing_rules_linkedin_leads.json"
  "$GOV_DIR/routing_rules_unified_ads_master.json"
)

JSON_VALID=0
JSON_INVALID=0
for json_file in "${JSON_FILES[@]}"; do
  if [ -f "$json_file" ]; then
    if python3 -c "import json; json.load(open('$json_file'))" 2>/dev/null; then
      JSON_VALID=$((JSON_VALID+1))
    else
      JSON_INVALID=$((JSON_INVALID+1))
      echo "  INVALID: $json_file" | tee -a "$LOG_FILE"
    fi
  else
    JSON_INVALID=$((JSON_INVALID+1))
    echo "  MISSING: $json_file" | tee -a "$LOG_FILE"
  fi
done
echo "  JSON valid: $JSON_VALID / invalid: $JSON_INVALID" | tee -a "$LOG_FILE"

# Step 2: Verify preferred_notes paths in all JSON files
echo "[$(date)] Step 2: Verifying preferred_notes paths..." | tee -a "$LOG_FILE"
TOTAL_PATHS=0
VALID_PATHS=0
INVALID_PATHS=0

for json_file in "${JSON_FILES[@]}"; do
  if [ -f "$json_file" ]; then
    while IFS= read -r path; do
      TOTAL_PATHS=$((TOTAL_PATHS+1))
      if [ -f "$VAULT/$path" ]; then
        VALID_PATHS=$((VALID_PATHS+1))
      else
        INVALID_PATHS=$((INVALID_PATHS+1))
        echo "  MISSING: $path (in $json_file)" | tee -a "$LOG_FILE"
      fi
    done < <(python3 -c "
import json, sys
data = json.load(open('$json_file'))
def extract_paths(obj):
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k == 'preferred_notes' and isinstance(v, list):
                for p in v:
                    print(p)
            elif isinstance(v, (dict, list)):
                extract_paths(v)
    elif isinstance(obj, list):
        for item in obj:
            extract_paths(item)
extract_paths(data)
" 2>/dev/null || true)
  fi
done
echo "  Paths total: $TOTAL_PATHS / valid: $VALID_PATHS / invalid: $INVALID_PATHS" | tee -a "$LOG_FILE"

# Step 3: Check for newly added files in knowledge base directories
echo "[$(date)] Step 3: Checking for new files in KB directories..." | tee -a "$LOG_FILE"
KB_DIRS=(
  "03-海外投流/Facebook投流知识库"
  "03-海外投流/TikTok投流知识库"
  "03-海外投流/LinkedIn获客知识库"
  "02-跨境社媒获客/海外视频自然获客"
  "02-跨境社媒获客/国内视频号获客"
  "14-国内投流/巨量引擎与本地推"
)

for kb_dir in "${KB_DIRS[@]}"; do
  if [ -d "$VAULT/$kb_dir" ]; then
    COUNT=$(find "$VAULT/$kb_dir" -name "*.md" -mtime -7 | wc -l | tr -d ' ')
    if [ "$COUNT" -gt 0 ]; then
      echo "  $kb_dir: $COUNT new files in last 7 days" | tee -a "$LOG_FILE"
    fi
  fi
done

# Step 4: Check entry notes in JSON routing files
echo "[$(date)] Step 4: Verifying entry_notes paths..." | tee -a "$LOG_FILE"
ENTRY_VALID=0
ENTRY_INVALID=0

for json_file in "${JSON_FILES[@]}"; do
  if [ -f "$json_file" ]; then
    while IFS= read -r path; do
      if [ -f "$VAULT/$path" ]; then
        ENTRY_VALID=$((ENTRY_VALID+1))
      else
        ENTRY_INVALID=$((ENTRY_INVALID+1))
        echo "  MISSING entry: $path (in $json_file)" | tee -a "$LOG_FILE"
      fi
    done < <(python3 -c "
import json
data = json.load(open('$json_file'))
def extract_entry_notes(obj):
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k == 'entry_notes' and isinstance(v, list):
                for p in v:
                    print(p)
            elif isinstance(v, (dict, list)):
                extract_entry_notes(v)
    elif isinstance(obj, list):
        for item in obj:
            extract_entry_notes(item)
extract_entry_notes(data)
" 2>/dev/null || true)
  fi
done
echo "  Entry notes valid: $ENTRY_VALID / invalid: $ENTRY_INVALID" | tee -a "$LOG_FILE"

# Step 5: Generate weekly summary
echo "[$(date)] Step 5: Generating weekly summary..." | tee -a "$LOG_FILE"

TOTAL_MD_COUNT=$(find "$VAULT/03-海外投流" "$VAULT/02-跨境社媒获客" "$VAULT/14-国内投流" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')

echo "" | tee -a "$LOG_FILE"
echo "========== Weekly Supplement Summary ==========" | tee -a "$LOG_FILE"
echo "Date: $DATE" | tee -a "$LOG_FILE"
echo "Total KB documents: $TOTAL_MD_COUNT" | tee -a "$LOG_FILE"
echo "JSON files: $((JSON_VALID+JSON_INVALID)) (valid: $JSON_VALID, invalid: $JSON_INVALID)" | tee -a "$LOG_FILE"
echo "Preferred notes paths: $TOTAL_PATHS (valid: $VALID_PATHS, invalid: $INVALID_PATHS)" | tee -a "$LOG_FILE"
echo "Entry notes paths: valid: $ENTRY_VALID, invalid: $ENTRY_INVALID" | tee -a "$LOG_FILE"
echo "================================================" | tee -a "$LOG_FILE"

echo "[$(date)] Weekly supplement completed." | tee -a "$LOG_FILE"
