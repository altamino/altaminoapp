package s7;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    @NotNull
    public static final Void a(long j6, @NotNull String name) {
        t.j(name, "name");
        throw new IllegalArgumentException("Long value " + j6 + " of " + name + " doesn't fit into 32-bit integer");
    }
}
