package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes8.dex */
public class j extends d {
    float radius;

    public j() {
        this.radius = -1.0f;
    }

    @Deprecated
    public j(float f) {
        this.radius = f;
    }

    @Override // com.google.android.material.shape.d
    public void b(@NonNull m mVar, float f, float f6, float f7) {
        mVar.o(0.0f, f7 * f6, 180.0f, 180.0f - f);
        float f10 = f7 * 2.0f * f6;
        mVar.a(0.0f, 0.0f, f10, f10, 180.0f, f);
    }
}
