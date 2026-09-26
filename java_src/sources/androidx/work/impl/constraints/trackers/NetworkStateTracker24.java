package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.annotation.RequiresApi;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi21;
import androidx.work.impl.utils.NetworkApi24;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class NetworkStateTracker24 extends ConstraintTracker<NetworkState> {

    @NotNull
    private final ConnectivityManager connectivityManager;

    @NotNull
    private final NetworkStateTracker24$networkCallback$1 networkCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v4, types: [androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1] */
    public NetworkStateTracker24(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        Object systemService = d().getSystemService("connectivity");
        t.h(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.connectivityManager = (ConnectivityManager) systemService;
        this.networkCallback = new ConnectivityManager.NetworkCallback() { // from class: androidx.work.impl.constraints.trackers.NetworkStateTracker24$networkCallback$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(@NotNull Network network, @NotNull NetworkCapabilities capabilities) {
                t.j(network, "network");
                t.j(capabilities, "capabilities");
                Logger.e().a(NetworkStateTrackerKt.TAG, "Network capabilities changed: " + capabilities);
                NetworkStateTracker24 networkStateTracker24 = this.this$0;
                networkStateTracker24.g(NetworkStateTrackerKt.c(networkStateTracker24.connectivityManager));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NotNull Network network) {
                t.j(network, "network");
                Logger.e().a(NetworkStateTrackerKt.TAG, "Network connection lost");
                NetworkStateTracker24 networkStateTracker24 = this.this$0;
                networkStateTracker24.g(NetworkStateTrackerKt.c(networkStateTracker24.connectivityManager));
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void h() {
        try {
            Logger.e().a(NetworkStateTrackerKt.TAG, "Registering network callback");
            NetworkApi24.a(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.e().d(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e);
        } catch (SecurityException e2) {
            Logger.e().d(NetworkStateTrackerKt.TAG, "Received exception while registering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public void i() {
        try {
            Logger.e().a(NetworkStateTrackerKt.TAG, "Unregistering network callback");
            NetworkApi21.c(this.connectivityManager, this.networkCallback);
        } catch (IllegalArgumentException e) {
            Logger.e().d(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e);
        } catch (SecurityException e2) {
            Logger.e().d(NetworkStateTrackerKt.TAG, "Received exception while unregistering network callback", e2);
        }
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    @NotNull
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public NetworkState e() {
        return NetworkStateTrackerKt.c(this.connectivityManager);
    }
}
