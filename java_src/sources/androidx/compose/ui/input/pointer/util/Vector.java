package androidx.compose.ui.input.pointer.util;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class Vector {

    @NotNull
    private final Float[] elements;
    private final int length;

    public final float a(int i10) {
        return this.elements[i10].floatValue();
    }

    public final void c(int i10, float f) {
        this.elements[i10] = Float.valueOf(f);
    }

    public final float d(@NotNull Vector a7) {
        t.j(a7, "a");
        int i10 = this.length;
        float fA = 0.0f;
        for (int i11 = 0; i11 < i10; i11++) {
            fA += a(i11) * a7.a(i11);
        }
        return fA;
    }

    public Vector(int i10) {
        this.length = i10;
        Float[] fArr = new Float[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            fArr[i11] = Float.valueOf(0.0f);
        }
        this.elements = fArr;
    }

    public final float b() {
        return (float) Math.sqrt(d(this));
    }
}
