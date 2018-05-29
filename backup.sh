. ./install.sh
python backup.py --bucket=ntree-infrastructure-backup-ca --bucket-region=ca-central-1 \
       create --include-archive --include-builds --include-logs --exclude-workspace
python backup.py --bucket=ntree-infrastructure-backup-ca --bucket-region=ca-central-1 \
       prune 7

