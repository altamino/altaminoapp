package androidx.work.impl;

import android.content.Context;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import j8.o;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class WorkDatabasePathHelper {

    @NotNull
    public static final WorkDatabasePathHelper INSTANCE = new WorkDatabasePathHelper();

    @RequiresApi
    private final File c(Context context) {
        return new File(Api21Impl.INSTANCE.a(context), WorkDatabasePathHelperKt.WORK_DATABASE_NAME);
    }

    public static final void d(@NotNull Context context) {
        t.j(context, "context");
        WorkDatabasePathHelper workDatabasePathHelper = INSTANCE;
        if (workDatabasePathHelper.b(context).exists()) {
            Logger.e().a(WorkDatabasePathHelperKt.TAG, "Migrating WorkDatabase to the no-backup directory");
            for (Map.Entry<File, File> entry : workDatabasePathHelper.e(context).entrySet()) {
                File key = entry.getKey();
                File value = entry.getValue();
                if (key.exists()) {
                    if (value.exists()) {
                        Logger.e().k(WorkDatabasePathHelperKt.TAG, "Over-writing contents of " + value);
                    }
                    Logger.e().a(WorkDatabasePathHelperKt.TAG, key.renameTo(value) ? "Migrated " + key + "to " + value : "Renaming " + key + " to " + value + " failed");
                }
            }
        }
    }

    @NotNull
    public final File a(@NotNull Context context) {
        t.j(context, "context");
        return c(context);
    }

    @NotNull
    public final File b(@NotNull Context context) {
        t.j(context, "context");
        File databasePath = context.getDatabasePath(WorkDatabasePathHelperKt.WORK_DATABASE_NAME);
        t.i(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        return databasePath;
    }

    @NotNull
    public final Map<File, File> e(@NotNull Context context) {
        t.j(context, "context");
        File fileB = b(context);
        File fileA = a(context);
        String[] strArr = WorkDatabasePathHelperKt.DATABASE_EXTRA_FILES;
        LinkedHashMap linkedHashMap = new LinkedHashMap(o.e(r0.e(strArr.length), 16));
        for (String str : strArr) {
            u uVarA = a0.a(new File(fileB.getPath() + str), new File(fileA.getPath() + str));
            linkedHashMap.put(uVarA.c(), uVarA.d());
        }
        return s0.q(linkedHashMap, a0.a(fileB, fileA));
    }

    private WorkDatabasePathHelper() {
    }
}
