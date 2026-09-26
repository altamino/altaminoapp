package androidx.core.util;

import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes9.dex */
public final class SizeFCompat {
    private final float mHeight;
    private final float mWidth;

    public float a() {
        return this.mHeight;
    }

    public float b() {
        return this.mWidth;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeFCompat)) {
            return false;
        }
        SizeFCompat sizeFCompat = (SizeFCompat) obj;
        return sizeFCompat.mWidth == this.mWidth && sizeFCompat.mHeight == this.mHeight;
    }

    @RequiresApi
    private static final class Api21Impl {
        private Api21Impl() {
        }

        @NonNull
        @DoNotInline
        static SizeF a(@NonNull SizeFCompat sizeFCompat) {
            Preconditions.i(sizeFCompat);
            return new SizeF(sizeFCompat.b(), sizeFCompat.a());
        }

        @NonNull
        @DoNotInline
        static SizeFCompat b(@NonNull SizeF sizeF) {
            Preconditions.i(sizeF);
            return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
        }
    }

    public int hashCode() {
        return Float.floatToIntBits(this.mWidth) ^ Float.floatToIntBits(this.mHeight);
    }

    @NonNull
    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }

    public SizeFCompat(float f, float f6) {
        this.mWidth = Preconditions.c(f, "width");
        this.mHeight = Preconditions.c(f6, "height");
    }
}
