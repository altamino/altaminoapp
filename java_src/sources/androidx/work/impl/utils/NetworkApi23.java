package androidx.work.impl.utils;

import android.net.ConnectivityManager;
import android.net.Network;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public final class NetworkApi23 {
    @DoNotInline
    @Nullable
    public static final Network a(@NotNull ConnectivityManager connectivityManager) {
        t.j(connectivityManager, "<this>");
        return connectivityManager.getActiveNetwork();
    }
}
