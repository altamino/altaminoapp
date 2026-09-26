package okio;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class _JvmPlatformKt {
    @NotNull
    public static final byte[] asUtf8ToByteArray(@NotNull String str) {
        kotlin.jvm.internal.t.j(str, "<this>");
        byte[] bytes = str.getBytes(kotlin.text.d.UTF_8);
        kotlin.jvm.internal.t.i(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <R> R m1803synchronized(@NotNull Object lock, @NotNull e8.a<? extends R> block) {
        R rInvoke;
        kotlin.jvm.internal.t.j(lock, "lock");
        kotlin.jvm.internal.t.j(block, "block");
        synchronized (lock) {
            try {
                rInvoke = block.invoke();
                kotlin.jvm.internal.r.b(1);
            } finally {
                kotlin.jvm.internal.r.b(1);
                kotlin.jvm.internal.r.a(1);
            }
        }
        return rInvoke;
    }

    @NotNull
    public static final String toUtf8String(@NotNull byte[] bArr) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        return new String(bArr, kotlin.text.d.UTF_8);
    }
}
