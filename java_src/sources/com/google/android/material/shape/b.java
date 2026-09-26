package com.google.android.material.shape;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public final class b implements c {
    private final float adjustment;
    private final c other;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.other.equals(bVar.other) && this.adjustment == bVar.adjustment;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.other, Float.valueOf(this.adjustment)});
    }

    @Override // com.google.android.material.shape.c
    public float a(@NonNull RectF rectF) {
        return Math.max(0.0f, this.other.a(rectF) + this.adjustment);
    }

    public b(float f, @NonNull c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).other;
            f += ((b) cVar).adjustment;
        }
        this.other = cVar;
        this.adjustment = f;
    }
}
