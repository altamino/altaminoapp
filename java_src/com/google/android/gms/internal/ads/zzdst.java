package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class zzdst extends zzdsr implements zzbd {
    private int flags;
    private int version;

    protected zzdst(String str) {
        super(str);
    }

    public final int getVersion() {
        if (!this.zzhti) {
            zzbbc();
        }
        return this.version;
    }

    protected final long zzo(ByteBuffer byteBuffer) {
        this.version = zzbc.zza(byteBuffer.get());
        this.flags = (zzbc.zzb(byteBuffer) << 8) + 0 + zzbc.zza(byteBuffer.get());
        return 4L;
    }
}
