package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class NetworkApi21 {
    @DoNotInline
    @Nullable
    public static final NetworkCapabilities a(@NotNull ConnectivityManager connectivityManager, @Nullable Network network) {
        t.j(connectivityManager, "<this>");
        return connectivityManager.getNetworkCapabilities(network);
    }

    @DoNotInline
    public static final boolean b(@NotNull NetworkCapabilities networkCapabilities, int i10) {
        t.j(networkCapabilities, "<this>");
        return networkCapabilities.hasCapability(i10);
    }

    @DoNotInline
    public static final void c(@NotNull ConnectivityManager connectivityManager, @NotNull ConnectivityManager.NetworkCallback networkCallback) {
        t.j(connectivityManager, "<this>");
        t.j(networkCallback, "networkCallback");
        connectivityManager.unregisterNetworkCallback(networkCallback);
    }
}
