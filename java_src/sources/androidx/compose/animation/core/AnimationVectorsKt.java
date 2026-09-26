package androidx.compose.animation.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class AnimationVectorsKt {
    @NotNull
    public static final AnimationVector1D a(float f) {
        return new AnimationVector1D(f);
    }

    @NotNull
    public static final <T extends AnimationVector> T b(@NotNull T t5) {
        t.j(t5, "<this>");
        T t10 = (T) d(t5);
        int iB = t10.b();
        for (int i10 = 0; i10 < iB; i10++) {
            t10.e(i10, t5.a(i10));
        }
        return t10;
    }

    public static final <T extends AnimationVector> void c(@NotNull T t5, @NotNull T source) {
        t.j(t5, "<this>");
        t.j(source, "source");
        int iB = t5.b();
        for (int i10 = 0; i10 < iB; i10++) {
            t5.e(i10, source.a(i10));
        }
    }

    @NotNull
    public static final <T extends AnimationVector> T d(@NotNull T t5) {
        t.j(t5, "<this>");
        return (T) t5.c();
    }
}
