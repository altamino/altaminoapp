package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class BatteryNotLowTrackerKt {
    public static final float BATTERY_LOW_THRESHOLD = 0.15f;

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("BatteryNotLowTracker");
        t.i(strI, "tagWithPrefix(\"BatteryNotLowTracker\")");
        TAG = strI;
    }
}
