package com.google.android.exoplayer2.video;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class a0 implements com.google.android.exoplayer2.h {
    private static final int DEFAULT_HEIGHT = 0;
    private static final float DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO = 1.0f;
    private static final int DEFAULT_UNAPPLIED_ROTATION_DEGREES = 0;
    private static final int DEFAULT_WIDTH = 0;
    private static final int FIELD_HEIGHT = 1;
    private static final int FIELD_PIXEL_WIDTH_HEIGHT_RATIO = 3;
    private static final int FIELD_UNAPPLIED_ROTATION_DEGREES = 2;
    private static final int FIELD_WIDTH = 0;

    @IntRange
    public final int height;

    @FloatRange
    public final float pixelWidthHeightRatio;

    @IntRange
    public final int unappliedRotationDegrees;

    @IntRange
    public final int width;
    public static final a0 UNKNOWN = new a0(0, 0);
    public static final com.google.android.exoplayer2.h.a<a0> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.video.z
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return a0.c(bundle);
        }
    };

    public a0(@IntRange int i10, @IntRange int i11) {
        this(i10, i11, 0, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a0 c(Bundle bundle) {
        return new a0(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.width == a0Var.width && this.height == a0Var.height && this.unappliedRotationDegrees == a0Var.unappliedRotationDegrees && this.pixelWidthHeightRatio == a0Var.pixelWidthHeightRatio;
    }

    public a0(@IntRange int i10, @IntRange int i11, @IntRange int i12, @FloatRange float f) {
        this.width = i10;
        this.height = i11;
        this.unappliedRotationDegrees = i12;
        this.pixelWidthHeightRatio = f;
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    public int hashCode() {
        return ((((((217 + this.width) * 31) + this.height) * 31) + this.unappliedRotationDegrees) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.width);
        bundle.putInt(b(1), this.height);
        bundle.putInt(b(2), this.unappliedRotationDegrees);
        bundle.putFloat(b(3), this.pixelWidthHeightRatio);
        return bundle;
    }
}
