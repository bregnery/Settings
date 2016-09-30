# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

#alias cms='cd CMSDAS/CMSSW_5_3_11/src'
#alias cset='source /cvmfs/cms.cern.ch/crab3/crab.sh'
#alias prox='grid-proxy-init'
#alias prox='voms-proxy-init --voms cms'
alias vprox='voms-proxy-init --voms cms --valid 168:00'
#alias timing='cd /afs/cern.ch/work/m/mcarver/CMSSW_7_3_2_patch2/src/HLTrigger/Timer/test/ && cmsenv'
#alias mdev='cd /afs/cern.ch/work/m/mcarver/MuonDevelopment/CMSSW_7_5_0_pre1/src/L1Trigger/L1EndcapMuonTrackFinder/test && cmsenv'
alias cdBoZ='cd /afs/cern.ch/user/b/bregnery/public/BoostedZStudies/CMSSW_7_4_7/src'
alias cdStg='cd /afs/cern.ch/user/b/bregnery/public/BoostedZStudies/CMSSW_8_0_2/src/UfHMuMuCode/UFDiMuonsAnalyzer/'
alias CRAB='source /cvmfs/cms.cern.ch/crab3/crab.sh'

#export USER_CXXFLAGS="-Wno-delete-non-virtual-dtor -Wno-error=unused-but-set-variable -Wno-error=unused-variable"

#export SCRAM_ARCH=slc5_amd64_gcc472
#export SCRAM_ARCH=slc5_amd64_gcc481
#export CXXFLAGS="-D__USE_XOPEN2K8"

#export SCRAM_ARCH=slc6_amd64_gcc481
#export SCRAM_ARCH=slc6_amd64_gcc491
export SCRAM_ARCH=slc6_amd64_gcc493
export PATH
