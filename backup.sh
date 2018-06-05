. ./install.sh
. ./config.sh
# the job logfile was confusing tar
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       create --include-vcs --include-archive --include-target --include-builds --include-workspace \
         --include-maven --include-logs --exclude 'workspace/*/build/yum' --exclude 'jobs/backups/jobs/jenkins-backup/builds/*/log' || exit 1
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} \
       prune 7

