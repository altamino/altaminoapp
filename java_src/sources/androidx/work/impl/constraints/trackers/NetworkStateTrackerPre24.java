package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class NetworkStateTrackerPre24 extends BroadcastReceiverConstraintTracker<NetworkState> {

    @NotNull
    private final ConnectivityManager connectivityManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkStateTrackerPre24(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        Object systemService = d().getSystemService("connectivity");
        t.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.connectivityManager = (ConnectivityManager) systemService;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    @NotNull
    public IntentFilter j() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void k(@NotNull Intent intent) {
        t.j(intent, "intent");
        if (t.e(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            Logger.e().a(NetworkStateTrackerKt.TAG, "Network broadcast received");
            g(NetworkStateTrackerKt.c(this.connectivityManager));
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    @NotNull
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public NetworkState e() {
        return NetworkStateTrackerKt.c(this.connectivityManager);
    }
}
