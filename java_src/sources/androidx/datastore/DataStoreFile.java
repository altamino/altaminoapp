package androidx.datastore;

import android.content.Context;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class DataStoreFile {
    @NotNull
    public static final File a(@NotNull Context context, @NotNull String fileName) {
        t.j(context, "<this>");
        t.j(fileName, "fileName");
        return new File(context.getApplicationContext().getFilesDir(), t.s("datastore/", fileName));
    }
}
