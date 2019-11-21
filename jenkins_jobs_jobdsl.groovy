folder('backups') {
    description('jenkins backup jobs')
}
job('backups/jenkins-restore') {
    scm {
        git {
          remote {
            url('git@github.com:ntreeinc/jenkins-backup-s3.git')
          }
          branch('master')
        }
    }
    steps {
        shell('./restore.sh')
        dsl('jenkins.model.Jenkins.instance.doReload()')
    }
}
job('backups/jenkins-backup') {
    scm {
        git {
          remote {
            url('git@github.com:ntreeinc/jenkins-backup-s3.git')
          }
          branch('master')
        }
    }
    steps {
        shell('./backup.sh')
    }
}
