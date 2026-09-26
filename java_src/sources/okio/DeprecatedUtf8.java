package okio;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: renamed from: okio.-DeprecatedUtf8, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class DeprecatedUtf8 {

    @NotNull
    public static final DeprecatedUtf8 INSTANCE = new DeprecatedUtf8();

    public final long size(@NotNull String string) {
        kotlin.jvm.internal.t.j(string, "string");
        return Utf8.size$default(string, 0, 0, 3, null);
    }

    public final long size(@NotNull String string, int i10, int i11) {
        kotlin.jvm.internal.t.j(string, "string");
        return Utf8.size(string, i10, i11);
    }

    private DeprecatedUtf8() {
    }
}
