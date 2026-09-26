package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public class d implements x {
    static final String ATTEMPT_NUMBER = "attemptNumber";
    static final String BACKEND_NAME = "backendName";
    static final String EVENT_PRIORITY = "priority";
    static final String EXTRAS = "extras";
    private static final String LOG_TAG = "JobInfoScheduler";
    private final f config;
    private final Context context;
    private final com.google.android.datatransport.runtime.scheduling.persistence.d eventStore;

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.x
    public void b(com.google.android.datatransport.runtime.p pVar, int i10) {
        a(pVar, i10, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.x
    public void a(com.google.android.datatransport.runtime.p pVar, int i10, boolean z6) {
        ComponentName componentName = new ComponentName(this.context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.context.getSystemService("jobscheduler");
        int iC = c(pVar);
        if (!z6 && d(jobScheduler, iC, i10)) {
            i2.a.b(LOG_TAG, "Upload for context %s is already scheduled. Returning...", pVar);
            return;
        }
        long jL0 = this.eventStore.l0(pVar);
        JobInfo.Builder builderC = this.config.c(new JobInfo.Builder(iC, componentName), pVar.d(), jL0, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt(ATTEMPT_NUMBER, i10);
        persistableBundle.putString(BACKEND_NAME, pVar.b());
        persistableBundle.putInt(EVENT_PRIORITY, n2.a.a(pVar.d()));
        if (pVar.c() != null) {
            persistableBundle.putString(EXTRAS, Base64.encodeToString(pVar.c(), 0));
        }
        builderC.setExtras(persistableBundle);
        i2.a.c(LOG_TAG, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", pVar, Integer.valueOf(iC), Long.valueOf(this.config.g(pVar.d(), jL0, i10)), Long.valueOf(jL0), Integer.valueOf(i10));
        jobScheduler.schedule(builderC.build());
    }

    @VisibleForTesting
    int c(com.google.android.datatransport.runtime.p pVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(pVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(n2.a.a(pVar.d())).array());
        if (pVar.c() != null) {
            adler32.update(pVar.c());
        }
        return (int) adler32.getValue();
    }

    public d(Context context, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, f fVar) {
        this.context = context;
        this.eventStore = dVar;
        this.config = fVar;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt(ATTEMPT_NUMBER);
            if (jobInfo.getId() == i10) {
                if (i12 < i11) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }
}
