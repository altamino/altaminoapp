package androidx.compose.runtime;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class ActualJvm_jvmKt {
    public static final void b(@NotNull Composer composer, @NotNull p<? super Composer, ? super Integer, l0> composable) {
        t.j(composer, "composer");
        t.j(composable, "composable");
        ((p) v0.e(composable, 2)).invoke(composer, 1);
    }

    public static final <T> T c(@NotNull Composer composer, @NotNull p<? super Composer, ? super Integer, ? extends T> composable) {
        t.j(composer, "composer");
        t.j(composable, "composable");
        return (T) ((p) v0.e(composable, 2)).invoke(composer, 1);
    }

    public static final int a(@Nullable Object obj) {
        return System.identityHashCode(obj);
    }
}
