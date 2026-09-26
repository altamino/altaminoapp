package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class t {
    private static final int SEEK_POINT_SIZE = 18;
    private static final int STREAM_MARKER = 1716281667;
    private static final int SYNC_CODE = 16382;

    @Nullable
    public static Metadata c(m mVar, boolean z6) throws IOException {
        Metadata metadataA = new y().a(mVar, z6 ? null : v2.b.NO_FRAMES_PREDICATE);
        if (metadataA == null || metadataA.h() == 0) {
            return null;
        }
        return metadataA;
    }

    public static v.a g(com.google.android.exoplayer2.util.c0 c0Var) {
        c0Var.Q(1);
        int iG = c0Var.G();
        long jE = ((long) c0Var.e()) + ((long) iG);
        int i10 = iG / 18;
        long[] jArrCopyOf = new long[i10];
        long[] jArrCopyOf2 = new long[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            long jW = c0Var.w();
            if (jW == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i11);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i11);
                break;
            }
            jArrCopyOf[i11] = jW;
            jArrCopyOf2[i11] = c0Var.w();
            c0Var.Q(2);
        }
        c0Var.Q((int) (jE - ((long) c0Var.e())));
        return new v.a(jArrCopyOf, jArrCopyOf2);
    }

    public static final class a {

        @Nullable
        public v flacStreamMetadata;

        public a(@Nullable v vVar) {
            this.flacStreamMetadata = vVar;
        }
    }

    public static boolean a(m mVar) throws IOException {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(4);
        mVar.peekFully(c0Var.d(), 0, 4);
        return c0Var.F() == 1716281667;
    }

    private static v.a f(m mVar, int i10) throws IOException {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(i10);
        mVar.readFully(c0Var.d(), 0, i10);
        return g(c0Var);
    }

    private static v h(m mVar) throws IOException {
        byte[] bArr = new byte[38];
        mVar.readFully(bArr, 0, 38);
        return new v(bArr, 4);
    }

    public static void i(m mVar) throws IOException {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(4);
        mVar.readFully(c0Var.d(), 0, 4);
        if (c0Var.F() != 1716281667) {
            throw v2.a("Failed to read FLAC stream marker.", null);
        }
    }

    private static List<String> j(m mVar, int i10) throws IOException {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(i10);
        mVar.readFully(c0Var.d(), 0, i10);
        c0Var.Q(4);
        return Arrays.asList(h0.j(c0Var, false, false).comments);
    }

    public static int b(m mVar) throws IOException {
        mVar.resetPeekPosition();
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(2);
        mVar.peekFully(c0Var.d(), 0, 2);
        int iJ = c0Var.J();
        if ((iJ >> 2) == SYNC_CODE) {
            mVar.resetPeekPosition();
            return iJ;
        }
        mVar.resetPeekPosition();
        throw v2.a("First frame does not start with sync code.", null);
    }

    @Nullable
    public static Metadata d(m mVar, boolean z6) throws IOException {
        mVar.resetPeekPosition();
        long peekPosition = mVar.getPeekPosition();
        Metadata metadataC = c(mVar, z6);
        mVar.skipFully((int) (mVar.getPeekPosition() - peekPosition));
        return metadataC;
    }

    public static boolean e(m mVar, a aVar) throws IOException {
        mVar.resetPeekPosition();
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(new byte[4]);
        mVar.peekFully(b0Var.data, 0, 4);
        boolean zG = b0Var.g();
        int iH = b0Var.h(7);
        int iH2 = b0Var.h(24) + 4;
        if (iH == 0) {
            aVar.flacStreamMetadata = h(mVar);
        } else {
            v vVar = aVar.flacStreamMetadata;
            if (vVar != null) {
                if (iH == 3) {
                    aVar.flacStreamMetadata = vVar.c(f(mVar, iH2));
                } else if (iH == 4) {
                    aVar.flacStreamMetadata = vVar.d(j(mVar, iH2));
                } else if (iH == 6) {
                    com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(iH2);
                    mVar.readFully(c0Var.d(), 0, iH2);
                    c0Var.Q(4);
                    aVar.flacStreamMetadata = vVar.b(com.google.common.collect.a0.y(PictureFrame.a(c0Var)));
                } else {
                    mVar.skipFully(iH2);
                }
            } else {
                throw new IllegalArgumentException();
            }
        }
        return zG;
    }
}
