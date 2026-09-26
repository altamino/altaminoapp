package coil.util;

import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public abstract class m {
    public /* synthetic */ m(kotlin.jvm.internal.k kVar) {
        this();
    }

    @MainThread
    public abstract boolean a(@NotNull coil.size.i iVar);

    @WorkerThread
    public abstract boolean b();

    private m() {
    }
}
