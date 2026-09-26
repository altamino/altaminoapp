package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class Trace {

    @NotNull
    public static final Trace INSTANCE = new Trace();

    @Nullable
    public final Object a(@NotNull String name) {
        t.j(name, "name");
        android.os.Trace.beginSection(name);
        return null;
    }

    private Trace() {
    }

    public final void b(@Nullable Object obj) {
        android.os.Trace.endSection();
    }
}
