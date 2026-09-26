package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class w {
    @NotNull
    public static final Object a(@NotNull Throwable exception) {
        kotlin.jvm.internal.t.j(exception, "exception");
        return new v.b(exception);
    }

    public static final void b(@NotNull Object obj) {
        if (obj instanceof v.b) {
            throw ((v.b) obj).exception;
        }
    }
}
