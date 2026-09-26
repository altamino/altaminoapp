package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public final class y {
    private final com.google.android.exoplayer2.util.c0 scratch = new com.google.android.exoplayer2.util.c0(10);

    @Nullable
    public Metadata a(m mVar, @Nullable v2.b.a aVar) throws IOException {
        Metadata metadataE = null;
        int i10 = 0;
        while (true) {
            try {
                mVar.peekFully(this.scratch.d(), 0, 10);
                this.scratch.P(0);
                if (this.scratch.G() != 4801587) {
                    break;
                }
                this.scratch.Q(3);
                int iC = this.scratch.C();
                int i11 = iC + 10;
                if (metadataE == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(this.scratch.d(), 0, bArr, 0, 10);
                    mVar.peekFully(bArr, 10, iC);
                    metadataE = new v2.b(aVar).e(bArr, i11);
                } else {
                    mVar.advancePeekPosition(iC);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        return metadataE;
    }
}
