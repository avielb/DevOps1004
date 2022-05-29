properties([pipelineTriggers([pollSCM('* * * * *')])])
node {
    stage("clone"){
        git "https://github.com/avielb/DevOps1004.git"
    }
    stage("show files"){
        sh "ls -l"
    }
}
