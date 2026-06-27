package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzbh extends zzdsr {
    private ByteBuffer zzde;

    public zzbh(String str) {
        super(str);
    }

    @Override // com.google.android.gms.internal.ads.zzdsr
    public final void zzg(ByteBuffer byteBuffer) {
        this.zzde = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }
}
