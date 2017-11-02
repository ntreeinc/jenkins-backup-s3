. ./install.sh
python backup.py --bucket=ntree-infrastructure-backup --bucket-region=us-east-1 \
       create --include-archive --include-builds --include-logs --exclude-workspace
python backup.py --bucket=ntree-infrastructure-backup --bucket-region=us-east-1 \
       prune 7

