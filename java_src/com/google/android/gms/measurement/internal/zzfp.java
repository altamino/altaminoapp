package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.v4.app.NotificationCompat;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzfp extends zzfs {
    private final AlarmManager zzrp;
    private final zzab zzrq;
    private Integer zzrr;

    protected zzfp(zzft zzftVar) {
        super(zzftVar);
        this.zzrp = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
        this.zzrq = new zzfq(this, zzftVar.zzgi(), zzftVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzfs
    protected final boolean zzak() throws IllegalStateException {
        this.zzrp.cancel(zzft());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzfs();
        return false;
    }

    @TargetApi(24)
    private final void zzfs() throws IllegalStateException {
        JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
        int jobId = getJobId();
        zzad().zzdi().zza("Cancelling job. JobID", Integer.valueOf(jobId));
        jobScheduler.cancel(jobId);
    }

    public final void zzv(long j) {
        zzah();
        zzag();
        Context context = getContext();
        if (!zzbo.zzl(context)) {
            zzad().zzdh().zzaq("Receiver not registered/enabled");
        }
        if (!zzgd.zzb(context, false)) {
            zzad().zzdh().zzaq("Service not registered/enabled");
        }
        cancel();
        long jElapsedRealtime = zzz().elapsedRealtime() + j;
        if (j < Math.max(0L, zzal.zzha.get(null).longValue()) && !this.zzrq.zzcn()) {
            zzad().zzdi().zzaq("Scheduling upload with DelayedRunnable");
            this.zzrq.zzv(j);
        }
        zzag();
        if (Build.VERSION.SDK_INT >= 24) {
            zzad().zzdi().zzaq("Scheduling upload with JobScheduler");
            Context context2 = getContext();
            ComponentName componentName = new ComponentName(context2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int jobId = getJobId();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            JobInfo jobInfoBuild = new JobInfo.Builder(jobId, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build();
            zzad().zzdi().zza("Scheduling job. JobID", Integer.valueOf(jobId));
            com.google.android.gms.internal.measurement.zzh.zza(context2, jobInfoBuild, "com.google.android.gms", "UploadAlarm");
            return;
        }
        zzad().zzdi().zzaq("Scheduling upload with AlarmManager");
        this.zzrp.setInexactRepeating(2, jElapsedRealtime, Math.max(zzal.zzgv.get(null).longValue(), j), zzft());
    }

    private final int getJobId() {
        if (this.zzrr == null) {
            String strValueOf = String.valueOf(getContext().getPackageName());
            this.zzrr = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.zzrr.intValue();
    }

    public final void cancel() {
        zzah();
        this.zzrp.cancel(zzft());
        this.zzrq.cancel();
        if (Build.VERSION.SDK_INT >= 24) {
            zzfs();
        }
    }

    private final PendingIntent zzft() {
        Context context = getContext();
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzfz zzdm() {
        return super.zzdm();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzo zzdn() {
        return super.zzdn();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzw zzdo() {
        return super.zzdo();
    }

    @Override // com.google.android.gms.measurement.internal.zzfr
    public final /* bridge */ /* synthetic */ zzbs zzdp() {
        return super.zzdp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzn() {
        super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzo() {
        super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzp() {
        super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ void zzq() {
        super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzad zzy() {
        return super.zzy();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Clock zzz() {
        return super.zzz();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzas zzaa() {
        return super.zzaa();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzgd zzab() {
        return super.zzab();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzbt zzac() {
        return super.zzac();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzau zzad() {
        return super.zzad();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzbf zzae() {
        return super.zzae();
    }

    @Override // com.google.android.gms.measurement.internal.zzct
    public final /* bridge */ /* synthetic */ zzt zzaf() {
        return super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzct, com.google.android.gms.measurement.internal.zzcv
    public final /* bridge */ /* synthetic */ zzq zzag() {
        return super.zzag();
    }
}
