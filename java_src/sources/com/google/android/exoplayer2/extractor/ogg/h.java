package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.audio.i0;
import com.google.android.exoplayer2.extractor.h0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.a0;
import java.util.Arrays;
import java.util.List;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes9.dex */
final class h extends i {
    private boolean firstCommentHeaderSeen;
    private static final byte[] OPUS_ID_HEADER_SIGNATURE = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] OPUS_COMMENT_HEADER_SIGNATURE = {79, 112, 117, 115, 84, 97, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 115};

    private long n(byte[] bArr) {
        int i10;
        int i11;
        byte b7 = bArr[0];
        int i12 = b7 & 255;
        int i13 = b7 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = bArr[1] & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i11 = 2500 << i15;
        } else if (i14 >= 12) {
            i11 = 10000 << (i14 & 1);
        } else {
            i11 = i15 == 3 ? 60000 : 10000 << i15;
        }
        return ((long) i10) * ((long) i11);
    }

    public static boolean p(c0 c0Var) {
        return o(c0Var, OPUS_ID_HEADER_SIGNATURE);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected boolean i(c0 c0Var, long j6, i.b bVar) throws v2 {
        if (o(c0Var, OPUS_ID_HEADER_SIGNATURE)) {
            byte[] bArrCopyOf = Arrays.copyOf(c0Var.d(), c0Var.f());
            int iC = i0.c(bArrCopyOf);
            List<byte[]> listA = i0.a(bArrCopyOf);
            if (bVar.format != null) {
                return true;
            }
            bVar.format = new a2.b().e0("audio/opus").H(iC).f0(48000).T(listA).E();
            return true;
        }
        byte[] bArr = OPUS_COMMENT_HEADER_SIGNATURE;
        if (!o(c0Var, bArr)) {
            com.google.android.exoplayer2.util.a.i(bVar.format);
            return false;
        }
        com.google.android.exoplayer2.util.a.i(bVar.format);
        if (this.firstCommentHeaderSeen) {
            return true;
        }
        this.firstCommentHeaderSeen = true;
        c0Var.Q(bArr.length);
        Metadata metadataC = h0.c(a0.u(h0.j(c0Var, false, false).comments));
        if (metadataC == null) {
            return true;
        }
        bVar.format = bVar.format.b().X(metadataC.c(bVar.format.metadata)).E();
        return true;
    }

    h() {
    }

    private static boolean o(c0 c0Var, byte[] bArr) {
        if (c0Var.a() < bArr.length) {
            return false;
        }
        int iE = c0Var.e();
        byte[] bArr2 = new byte[bArr.length];
        c0Var.j(bArr2, 0, bArr.length);
        c0Var.P(iE);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(c0 c0Var) {
        return c(n(c0Var.d()));
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.firstCommentHeaderSeen = false;
        }
    }
}
