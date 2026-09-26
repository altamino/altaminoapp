package androidx.compose.foundation.text;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class StringHelpers_jvmKt {
    @NotNull
    public static final StringBuilder a(@NotNull StringBuilder sb, int i10) {
        t.j(sb, "<this>");
        StringBuilder appendCodePointX = sb.appendCodePoint(i10);
        t.i(appendCodePointX, "appendCodePointX");
        return appendCodePointX;
    }
}
