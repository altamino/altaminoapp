package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaExtractor;

/* loaded from: classes2.dex */
public final class zzgb {
    public byte[] iv;
    private byte[] key;
    private int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    private int numSubSamples;
    private final MediaCodec.CryptoInfo zzabn;

    public zzgb() {
        this.zzabn = zzkq.SDK_INT >= 16 ? new MediaCodec.CryptoInfo() : null;
    }

    public final void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.numSubSamples = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.iv = bArr2;
        this.mode = 1;
        if (zzkq.SDK_INT >= 16) {
            this.zzabn.set(this.numSubSamples, this.numBytesOfClearData, this.numBytesOfEncryptedData, this.key, this.iv, this.mode);
        }
    }

    @TargetApi(16)
    public final void zza(MediaExtractor mediaExtractor) {
        mediaExtractor.getSampleCryptoInfo(this.zzabn);
        MediaCodec.CryptoInfo cryptoInfo = this.zzabn;
        this.numSubSamples = cryptoInfo.numSubSamples;
        this.numBytesOfClearData = cryptoInfo.numBytesOfClearData;
        this.numBytesOfEncryptedData = cryptoInfo.numBytesOfEncryptedData;
        this.key = cryptoInfo.key;
        this.iv = cryptoInfo.iv;
        this.mode = cryptoInfo.mode;
    }

    @TargetApi(16)
    public final MediaCodec.CryptoInfo zzdl() {
        return this.zzabn;
    }
}
