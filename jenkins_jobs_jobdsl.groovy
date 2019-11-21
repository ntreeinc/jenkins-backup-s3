folder('Operations') {
    description('Administrative jobs')
}
job('Operations/jenkins-restore') {
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
job('Operations/jenkins-backup') {
    triggers {
        cron('@midnight')
    }
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
