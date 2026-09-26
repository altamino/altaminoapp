package androidx.work.impl;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public final class Api21Impl {

    @NotNull
    public static final Api21Impl INSTANCE = new Api21Impl();

    @DoNotInline
    @NotNull
    public final File a(@NotNull Context context) {
        t.j(context, "context");
        File noBackupFilesDir = context.getNoBackupFilesDir();
        t.i(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }

    private Api21Impl() {
    }
}
