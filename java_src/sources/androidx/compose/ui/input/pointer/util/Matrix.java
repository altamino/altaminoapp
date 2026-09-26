package androidx.compose.ui.input.pointer.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class Matrix {

    @NotNull
    private final Vector[] elements;

    public final float a(int i10, int i11) {
        return this.elements[i10].a(i11);
    }

    @NotNull
    public final Vector b(int i10) {
        return this.elements[i10];
    }

    public final void c(int i10, int i11, float f) {
        this.elements[i10].c(i11, f);
    }

    public Matrix(int i10, int i11) {
        Vector[] vectorArr = new Vector[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            vectorArr[i12] = new Vector(i11);
        }
        this.elements = vectorArr;
    }
}
