package androidx.work.impl.utils;

import android.os.PowerManager;
import java.util.WeakHashMap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class WakeLocksHolder {

    @NotNull
    public static final WakeLocksHolder INSTANCE = new WakeLocksHolder();

    @NotNull
    private static final WeakHashMap<PowerManager.WakeLock, String> wakeLocks = new WeakHashMap<>();

    @NotNull
    public final WeakHashMap<PowerManager.WakeLock, String> a() {
        return wakeLocks;
    }

    private WakeLocksHolder() {
    }
}
