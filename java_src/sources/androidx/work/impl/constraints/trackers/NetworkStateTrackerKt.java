package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.annotation.RestrictTo;
import androidx.core.net.ConnectivityManagerCompat;
import androidx.work.Logger;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.NetworkApi21;
import androidx.work.impl.utils.NetworkApi23;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class NetworkStateTrackerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("NetworkStateTracker");
        t.i(strI, "tagWithPrefix(\"NetworkStateTracker\")");
        TAG = strI;
    }

    @RestrictTo
    @NotNull
    public static final ConstraintTracker<NetworkState> a(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        t.j(context, "context");
        t.j(taskExecutor, "taskExecutor");
        return Build.VERSION.SDK_INT >= 24 ? new NetworkStateTracker24(context, taskExecutor) : new NetworkStateTrackerPre24(context, taskExecutor);
    }

    @NotNull
    public static final NetworkState c(@NotNull ConnectivityManager connectivityManager) {
        t.j(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z6 = false;
        boolean z10 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean zD = d(connectivityManager);
        boolean zA = ConnectivityManagerCompat.a(connectivityManager);
        if (activeNetworkInfo != null && !activeNetworkInfo.isRoaming()) {
            z6 = true;
        }
        return new NetworkState(z10, zD, zA, z6);
    }

    public static final boolean d(@NotNull ConnectivityManager connectivityManager) {
        t.j(connectivityManager, "<this>");
        try {
            NetworkCapabilities networkCapabilitiesA = NetworkApi21.a(connectivityManager, NetworkApi23.a(connectivityManager));
            if (networkCapabilitiesA != null) {
                return NetworkApi21.b(networkCapabilitiesA, 16);
            }
            return false;
        } catch (SecurityException e) {
            Logger.e().d(TAG, "Unable to validate active network", e);
            return false;
        }
    }
}
