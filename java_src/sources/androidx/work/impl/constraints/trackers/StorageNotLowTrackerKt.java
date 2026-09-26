package androidx.work.impl.constraints.trackers;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class StorageNotLowTrackerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("StorageNotLowTracker");
        t.i(strI, "tagWithPrefix(\"StorageNotLowTracker\")");
        TAG = strI;
    }
}
