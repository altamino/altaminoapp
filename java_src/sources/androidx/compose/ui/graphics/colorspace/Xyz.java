package androidx.compose.ui.graphics.colorspace;

import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Xyz extends ColorSpace {
    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float d(int i10) {
        return 2.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float e(int i10) {
        return -2.0f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Xyz(@NotNull String name, int i10) {
        super(name, ColorModel.Companion.c(), i10, null);
        t.j(name, "name");
    }

    private final float j(float f) {
        return o.m(f, -2.0f, 2.0f);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] a(@NotNull float[] v5) {
        t.j(v5, "v");
        v5[0] = j(v5[0]);
        v5[1] = j(v5[1]);
        v5[2] = j(v5[2]);
        return v5;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] i(@NotNull float[] v5) {
        t.j(v5, "v");
        v5[0] = j(v5[0]);
        v5[1] = j(v5[1]);
        v5[2] = j(v5[2]);
        return v5;
    }
}
