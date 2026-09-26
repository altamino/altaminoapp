package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class StorageNotLowTracker extends BroadcastReceiverConstraintTracker<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StorageNotLowTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    @NotNull
    public IntentFilter j() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void k(@NotNull Intent intent) {
        t.j(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        Logger.e().a(StorageNotLowTrackerKt.TAG, "Received " + intent.getAction());
        String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode == -1181163412) {
                if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                    g(Boolean.FALSE);
                }
            } else if (iHashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                g(Boolean.TRUE);
            }
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public Boolean e() {
        Intent intentRegisterReceiver = d().registerReceiver(null, j());
        boolean z6 = true;
        if (intentRegisterReceiver != null && intentRegisterReceiver.getAction() != null) {
            String action = intentRegisterReceiver.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode != -1181163412) {
                    if (iHashCode != -730838620 || !action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    }
                } else {
                    action.equals("android.intent.action.DEVICE_STORAGE_LOW");
                }
                z6 = false;
            } else {
                z6 = false;
            }
        }
        return Boolean.valueOf(z6);
    }
}
