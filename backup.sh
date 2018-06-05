. ./install.sh
. ./config.sh
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       create --include-archive --include-target --include-builds --include-workspace --include-maven --include-logs
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       prune 7

