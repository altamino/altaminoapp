package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.t;

/* JADX INFO: loaded from: classes9.dex */
public final class p {
    private static final String TAG = "TrackEncryptionBox";
    public final e0.a cryptoData;

    @Nullable
    public final byte[] defaultInitializationVector;
    public final boolean isEncrypted;
    public final int perSampleIvSize;

    @Nullable
    public final String schemeType;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static int a(@Nullable String str) {
        if (str == null) {
            return 1;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    b7 = 0;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    b7 = 1;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    b7 = 2;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    b7 = 3;
                }
                break;
        }
        switch (b7) {
            case 0:
            case 1:
                return 2;
            default:
                t.i(TAG, "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
            case 2:
            case 3:
                return 1;
        }
    }

    public p(boolean z6, @Nullable String str, int i10, byte[] bArr, int i11, int i12, @Nullable byte[] bArr2) {
        boolean z10;
        if (i10 == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a((bArr2 == null) ^ z10);
        this.isEncrypted = z6;
        this.schemeType = str;
        this.perSampleIvSize = i10;
        this.defaultInitializationVector = bArr2;
        this.cryptoData = new e0.a(a(str), bArr, i11, i12);
    }
}
