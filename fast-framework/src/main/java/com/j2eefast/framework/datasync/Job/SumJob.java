package com.j2eefast.framework.datasync.Job;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("sumJob")
public class SumJob {
    @Autowired
    private InstitutionJob institutionJob;
    @Autowired
    private PersonSyncJob personSyncJob;
    @Autowired
    private SyncTeamJob syncTeamJob;
    @Autowired
    private SyncPersonTeamJob syncPersonTeamJob;
    public void run(){
        institutionJob.run();
        personSyncJob.run();
        syncTeamJob.run();
        syncPersonTeamJob.run();
    }
}
