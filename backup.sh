. ./install.sh
. ./config.sh
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       create --include-vcs --include-archive --include-target --include-builds --include-workspace \
         --include-maven --include-logs --exclude 'workspace/*/build/yum'
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       prune 7

