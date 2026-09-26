package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
public abstract class h extends com.google.android.exoplayer2.decoder.j<n, o, k> implements j {
    private final String name;

    class a extends o {
        a() {
        }

        @Override // com.google.android.exoplayer2.decoder.h
        public void l() {
            h.this.n(this);
        }
    }

    protected h(String str) {
        super(new n[2], new o[2]);
        this.name = str;
        q(1024);
    }

    @Override // com.google.android.exoplayer2.text.j
    public void setPositionUs(long j6) {
    }

    protected abstract i v(byte[] bArr, int i10, boolean z6) throws k;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.j
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final n c() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.j
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final o d() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.j
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final k e(Throwable th) {
        return new k("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.j
    @Nullable
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final k f(n nVar, o oVar, boolean z6) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(nVar.data);
            oVar.n(nVar.timeUs, v(byteBuffer.array(), byteBuffer.limit(), z6), nVar.subsampleOffsetUs);
            oVar.c(Integer.MIN_VALUE);
            return null;
        } catch (k e) {
            return e;
        }
    }
}
