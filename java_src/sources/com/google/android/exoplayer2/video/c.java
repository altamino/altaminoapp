package com.google.android.exoplayer2.video;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public final class c implements com.google.android.exoplayer2.h {
    private static final int FIELD_COLOR_RANGE = 1;
    private static final int FIELD_COLOR_SPACE = 0;
    private static final int FIELD_COLOR_TRANSFER = 2;
    private static final int FIELD_HDR_STATIC_INFO = 3;
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    private int hashCode;

    @Nullable
    public final byte[] hdrStaticInfo;
    public static final c SDR_BT709_LIMITED = new c(1, 2, 3, null);
    public static final com.google.android.exoplayer2.h.a<c> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.video.b
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            return c.e(bundle);
        }
    };

    public static int b(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int c(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.colorSpace == cVar.colorSpace && this.colorRange == cVar.colorRange && this.colorTransfer == cVar.colorTransfer && Arrays.equals(this.hdrStaticInfo, cVar.hdrStaticInfo);
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c e(Bundle bundle) {
        return new c(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((((527 + this.colorSpace) * 31) + this.colorRange) * 31) + this.colorTransfer) * 31) + Arrays.hashCode(this.hdrStaticInfo);
        }
        return this.hashCode;
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.colorSpace);
        bundle.putInt(d(1), this.colorRange);
        bundle.putInt(d(2), this.colorTransfer);
        bundle.putByteArray(d(3), this.hdrStaticInfo);
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ColorInfo(");
        sb.append(this.colorSpace);
        sb.append(", ");
        sb.append(this.colorRange);
        sb.append(", ");
        sb.append(this.colorTransfer);
        sb.append(", ");
        sb.append(this.hdrStaticInfo != null);
        sb.append(")");
        return sb.toString();
    }

    public c(int i10, int i11, int i12, @Nullable byte[] bArr) {
        this.colorSpace = i10;
        this.colorRange = i11;
        this.colorTransfer = i12;
        this.hdrStaticInfo = bArr;
    }
}
