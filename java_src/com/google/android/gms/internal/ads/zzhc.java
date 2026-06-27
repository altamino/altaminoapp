package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

@TargetApi(21)
/* loaded from: classes2.dex */
final class zzhc implements zzha {
    private final int zzaes;
    private MediaCodecInfo[] zzaet;

    public zzhc(boolean z) {
        this.zzaes = z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final boolean zzeh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final int getCodecCount() {
        zzei();
        return this.zzaet.length;
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final MediaCodecInfo getCodecInfoAt(int i) {
        zzei();
        return this.zzaet[i];
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private final void zzei() {
        if (this.zzaet == null) {
            this.zzaet = new MediaCodecList(this.zzaes).getCodecInfos();
        }
    }
}
