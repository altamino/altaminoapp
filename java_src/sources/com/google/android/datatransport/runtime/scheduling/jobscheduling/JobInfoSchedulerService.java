package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public class JobInfoSchedulerService extends JobService {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i10 = jobParameters.getExtras().getInt("priority");
        int i11 = jobParameters.getExtras().getInt("attemptNumber");
        com.google.android.datatransport.runtime.u.f(getApplicationContext());
        com.google.android.datatransport.runtime.p.a aVarD = com.google.android.datatransport.runtime.p.a().b(string).d(n2.a.b(i10));
        if (string2 != null) {
            aVarD.c(Base64.decode(string2, 0));
        }
        com.google.android.datatransport.runtime.u.c().e().v(aVarD.a(), i11, new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f964a.b(jobParameters);
            }
        });
        return true;
    }
}
