package androidx.work.impl.utils.taskexecutor;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class a {
    public static void a(TaskExecutor _this, @NonNull Runnable runnable) {
        _this.c().execute(runnable);
    }
}
