package androidx.work.impl.background.systemjob;

import android.annotation.SuppressLint;
import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.model.WorkSpec;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi
@SuppressLint({"ClassVerificationFailure"})
@RestrictTo
class SystemJobInfoConverter {
    static final String EXTRA_IS_PERIODIC = "EXTRA_IS_PERIODIC";
    static final String EXTRA_WORK_SPEC_GENERATION = "EXTRA_WORK_SPEC_GENERATION";
    static final String EXTRA_WORK_SPEC_ID = "EXTRA_WORK_SPEC_ID";
    private static final String TAG = Logger.i("SystemJobInfoConverter");
    private final ComponentName mWorkServiceComponent;

    /* JADX INFO: renamed from: androidx.work.impl.background.systemjob.SystemJobInfoConverter$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$work$NetworkType;

        static {
            int[] iArr = new int[NetworkType.values().length];
            $SwitchMap$androidx$work$NetworkType = iArr;
            try {
                iArr[NetworkType.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$work$NetworkType[NetworkType.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    static int c(NetworkType networkType) {
        int i10 = AnonymousClass1.$SwitchMap$androidx$work$NetworkType[networkType.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 != 4) {
            if (i10 == 5 && Build.VERSION.SDK_INT >= 26) {
                return 4;
            }
        } else if (Build.VERSION.SDK_INT >= 24) {
            return 3;
        }
        Logger.e().a(TAG, "API version too low. Cannot convert network type value " + networkType);
        return 1;
    }

    static void d(@NonNull JobInfo.Builder builder, @NonNull NetworkType networkType) {
        if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(c(networkType));
        } else {
            builder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
        }
    }

    JobInfo a(WorkSpec workSpec, int jobId) {
        Constraints constraints = workSpec.constraints;
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(EXTRA_WORK_SPEC_ID, workSpec.id);
        persistableBundle.putInt(EXTRA_WORK_SPEC_GENERATION, workSpec.f());
        persistableBundle.putBoolean(EXTRA_IS_PERIODIC, workSpec.j());
        JobInfo.Builder extras = new JobInfo.Builder(jobId, this.mWorkServiceComponent).setRequiresCharging(constraints.g()).setRequiresDeviceIdle(constraints.h()).setExtras(persistableBundle);
        d(extras, constraints.d());
        if (!constraints.h()) {
            extras.setBackoffCriteria(workSpec.backoffDelayDuration, workSpec.backoffPolicy == BackoffPolicy.LINEAR ? 0 : 1);
        }
        long jMax = Math.max(workSpec.c() - System.currentTimeMillis(), 0L);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!workSpec.expedited) {
            extras.setImportantWhileForeground(true);
        }
        if (i10 >= 24 && constraints.e()) {
            Iterator<Constraints.ContentUriTrigger> it = constraints.c().iterator();
            while (it.hasNext()) {
                extras.addTriggerContentUri(b(it.next()));
            }
            extras.setTriggerContentUpdateDelay(constraints.b());
            extras.setTriggerContentMaxDelay(constraints.a());
        }
        extras.setPersisted(false);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            extras.setRequiresBatteryNotLow(constraints.f());
            extras.setRequiresStorageNotLow(constraints.i());
        }
        boolean z6 = workSpec.runAttemptCount > 0;
        boolean z10 = jMax > 0;
        if (i11 >= 31 && workSpec.expedited && !z6 && !z10) {
            extras.setExpedited(true);
        }
        return extras.build();
    }

    @VisibleForTesting
    SystemJobInfoConverter(@NonNull Context context) {
        this.mWorkServiceComponent = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
    }

    @RequiresApi
    private static JobInfo.TriggerContentUri b(Constraints.ContentUriTrigger contentUriTrigger) {
        boolean zB = contentUriTrigger.b();
        h.a();
        return g.a(contentUriTrigger.a(), zB ? 1 : 0);
    }
}
