pipeline {
    agent any
    // a pipleline to create/update other jobs
    // from example at https://gist.githubusercontent.com/HRMPW/9b2a3ccbdc370e0a7c9cb541be229da9/raw/76eb6b44cdd5f7d2df98468b874014eabdb13014/jobdsl%2520pipeline
    // 
    options {
        buildDiscarder(logRotator(numToKeepStr:'10'))
    }
    triggers {
        githubPush()
    }
    stages{
        stage("Create jobs") {
            when { branch 'master' } // don't create multiple copies for branches
            steps {
                jobDsl targets: './backup_job_definitions-jobdsl.groovy'
            }
        }
    }
}
