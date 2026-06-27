package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;

@TargetApi(23)
/* loaded from: classes2.dex */
final class zztk implements MediaCodec.OnFrameRenderedListener {
    private final /* synthetic */ zzth zzbpc;

    private zztk(zzth zzthVar, MediaCodec mediaCodec) {
        this.zzbpc = zzthVar;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        zzth zzthVar = this.zzbpc;
        if (this != zzthVar.zzboy) {
            return;
        }
        zzthVar.zzkj();
    }
}
