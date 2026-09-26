package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public class e extends d {
    float size;

    public e() {
        this.size = -1.0f;
    }

    @Deprecated
    public e(float f) {
        this.size = f;
    }

    @Override // com.google.android.material.shape.d
    public void b(@NonNull m mVar, float f, float f6, float f7) {
        mVar.o(0.0f, f7 * f6, 180.0f, 180.0f - f);
        double d = f7;
        double d2 = f6;
        mVar.m((float) (Math.sin(Math.toRadians(f)) * d * d2), (float) (Math.sin(Math.toRadians(90.0f - f)) * d * d2));
    }
}
