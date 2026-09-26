package androidx.work.impl;

import androidx.work.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class WorkDatabasePathHelperKt {

    @NotNull
    private static final String[] DATABASE_EXTRA_FILES;

    @NotNull
    private static final String TAG;

    @NotNull
    public static final String WORK_DATABASE_NAME = "androidx.work.workdb";

    static {
        String strI = Logger.i("WrkDbPathHelper");
        t.i(strI, "tagWithPrefix(\"WrkDbPathHelper\")");
        TAG = strI;
        DATABASE_EXTRA_FILES = new String[]{"-journal", "-shm", "-wal"};
    }
}
