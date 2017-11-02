./install.sh
python backup.py --bucket=ntree-infrastructure-backup --bucket-region=us-east-1 backup \
       --include-archive --include-builds --include-logs
