. ./install.sh
. ./config.sh
python backup.py --bucket=${backup_bucket_name} --bucket-region=${backup_bucket_region} restore latest
