package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class SystemAlarmScheduler implements Scheduler {
    private static final String TAG = Logger.i("SystemAlarmScheduler");
    private final Context mContext;

    @Override // androidx.work.impl.Scheduler
    public boolean b() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public void d(@NonNull WorkSpec... workSpecs) {
        for (WorkSpec workSpec : workSpecs) {
            a(workSpec);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void c(@NonNull String workSpecId) {
        this.mContext.startService(CommandHandler.g(this.mContext, workSpecId));
    }

    public SystemAlarmScheduler(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void a(@NonNull WorkSpec workSpec) {
        Logger.e().a(TAG, "Scheduling work with workSpecId " + workSpec.id);
        this.mContext.startService(CommandHandler.d(this.mContext, WorkSpecKt.a(workSpec)));
    }
}
