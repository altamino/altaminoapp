package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zznd extends zzmy {
    public long zzaga;
    public ByteBuffer zzde;
    public final zzmz zzaze = new zzmz();
    private final int zzagb = 0;

    public zznd(int i) {
    }

    public final void zzan(int i) throws IllegalStateException {
        ByteBuffer byteBuffer = this.zzde;
        if (byteBuffer == null) {
            this.zzde = zzao(i);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = this.zzde.position();
        int i2 = i + iPosition;
        if (iCapacity >= i2) {
            return;
        }
        ByteBuffer byteBufferZzao = zzao(i2);
        if (iPosition > 0) {
            this.zzde.position(0);
            this.zzde.limit(iPosition);
            byteBufferZzao.put(this.zzde);
        }
        this.zzde = byteBufferZzao;
    }

    public final boolean zzeo() {
        return zzam(1073741824);
    }

    @Override // com.google.android.gms.internal.ads.zzmy
    public final void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.zzde;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    private final ByteBuffer zzao(int i) {
        ByteBuffer byteBuffer = this.zzde;
        int iCapacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(iCapacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }
}
