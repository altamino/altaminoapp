package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RestrictTo
public abstract class BroadcastReceiverConstraintTracker<T> extends ConstraintTracker<T> {

    @NotNull
    private final BroadcastReceiver broadcastReceiver;

    @NotNull
    public abstract IntentFilter j();

    public abstract void k(@NotNull Intent intent);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastReceiverConstraintTracker(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        this.broadcastReceiver = new BroadcastReceiver(this) { // from class: androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker$broadcastReceiver$1
            final /* synthetic */ BroadcastReceiverConstraintTracker<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(@NotNull Context context2, @NotNull Intent intent) {
                t.j(context2, "context");
                t.j(intent, "intent");
                this.this$0.k(intent);
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void h() {
        Logger.e().a(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName() + ": registering receiver");
        d().registerReceiver(this.broadcastReceiver, j());
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void i() {
        Logger.e().a(BroadcastReceiverConstraintTrackerKt.TAG, getClass().getSimpleName() + ": unregistering receiver");
        d().unregisterReceiver(this.broadcastReceiver);
    }
}
