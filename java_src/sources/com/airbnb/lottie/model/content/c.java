package com.airbnb.lottie.model.content;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final int[] colors;
    private final float[] positions;

    public int[] a() {
        return this.colors;
    }

    public float[] b() {
        return this.positions;
    }

    public int c() {
        return this.colors.length;
    }

    public void d(c cVar, c cVar2, float f) {
        if (cVar.colors.length == cVar2.colors.length) {
            for (int i10 = 0; i10 < cVar.colors.length; i10++) {
                this.positions[i10] = com.airbnb.lottie.utils.e.h(cVar.positions[i10], cVar2.positions[i10], f);
                this.colors[i10] = com.airbnb.lottie.utils.a.c(f, cVar.colors[i10], cVar2.colors[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + cVar.colors.length + " vs " + cVar2.colors.length + ")");
    }

    public c(float[] fArr, int[] iArr) {
        this.positions = fArr;
        this.colors = iArr;
    }
}
