package q2;

import android.util.Pair;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.v2;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class d {
    private static final String TAG = "WavHeaderReader";

    private static final class a {
        public static final int SIZE_IN_BYTES = 8;
        public final int id;
        public final long size;

        private a(int i10, long j6) {
            this.id = i10;
            this.size = j6;
        }

        public static a a(m mVar, c0 c0Var) throws IOException {
            mVar.peekFully(c0Var.d(), 0, 8);
            c0Var.P(0);
            return new a(c0Var.n(), c0Var.t());
        }
    }

    public static boolean a(m mVar) throws IOException {
        c0 c0Var = new c0(8);
        int i10 = a.a(mVar, c0Var).id;
        if (i10 != 1380533830 && i10 != 1380333108) {
            return false;
        }
        mVar.peekFully(c0Var.d(), 0, 4);
        c0Var.P(0);
        int iN = c0Var.n();
        if (iN == 1463899717) {
            return true;
        }
        t.c(TAG, "Unsupported form type: " + iN);
        return false;
    }

    public static c b(m mVar) throws IOException {
        byte[] bArr;
        c0 c0Var = new c0(16);
        a aVarD = d(1718449184, mVar, c0Var);
        com.google.android.exoplayer2.util.a.g(aVarD.size >= 16);
        mVar.peekFully(c0Var.d(), 0, 16);
        c0Var.P(0);
        int iV = c0Var.v();
        int iV2 = c0Var.v();
        int iU = c0Var.u();
        int iU2 = c0Var.u();
        int iV3 = c0Var.v();
        int iV4 = c0Var.v();
        int i10 = ((int) aVarD.size) - 16;
        if (i10 > 0) {
            byte[] bArr2 = new byte[i10];
            mVar.peekFully(bArr2, 0, i10);
            bArr = bArr2;
        } else {
            bArr = o0.EMPTY_BYTE_ARRAY;
        }
        mVar.skipFully((int) (mVar.getPeekPosition() - mVar.getPosition()));
        return new c(iV, iV2, iU, iU2, iV3, iV4, bArr);
    }

    public static long c(m mVar) throws IOException {
        c0 c0Var = new c0(8);
        a aVarA = a.a(mVar, c0Var);
        if (aVarA.id != 1685272116) {
            mVar.resetPeekPosition();
            return -1L;
        }
        mVar.advancePeekPosition(8);
        c0Var.P(0);
        mVar.peekFully(c0Var.d(), 0, 8);
        long jR = c0Var.r();
        mVar.skipFully(((int) aVarA.size) + 8);
        return jR;
    }

    private static a d(int i10, m mVar, c0 c0Var) throws IOException {
        a aVarA = a.a(mVar, c0Var);
        while (aVarA.id != i10) {
            t.i(TAG, "Ignoring unknown WAV chunk: " + aVarA.id);
            long j6 = aVarA.size + 8;
            if (j6 <= 2147483647L) {
                mVar.skipFully((int) j6);
                aVarA = a.a(mVar, c0Var);
            } else {
                throw v2.c("Chunk is too large (~2GB+) to skip; id: " + aVarA.id);
            }
        }
        return aVarA;
    }

    public static Pair<Long, Long> e(m mVar) throws IOException {
        mVar.resetPeekPosition();
        a aVarD = d(1684108385, mVar, new c0(8));
        mVar.skipFully(8);
        return Pair.create(Long.valueOf(mVar.getPosition()), Long.valueOf(aVarD.size));
    }
}
