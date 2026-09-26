package androidx.work.impl.constraints;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class WorkConstraintsTrackerKt {

    @NotNull
    private static final String TAG;

    static {
        String strI = Logger.i("WorkConstraintsTracker");
        t.i(strI, "tagWithPrefix(\"WorkConstraintsTracker\")");
        TAG = strI;
    }
}
