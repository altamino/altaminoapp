package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public final class a implements c {
    private final float size;

    @Override // com.google.android.material.shape.c
    public float a(@NonNull RectF rectF) {
        return this.size;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.size == ((a) obj).size;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.size)});
    }

    public a(float f) {
        this.size = f;
    }
}
