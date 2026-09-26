package o2;

import android.net.Uri;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class b implements l {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    private static final int MAX_FRAME_SIZE_BYTES;
    private static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    private static final int SAMPLE_RATE_NB = 8000;
    private static final int SAMPLE_RATE_WB = 16000;
    private static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    private static final int[] frameSizeBytesByTypeWb;
    private int currentSampleBytesRemaining;
    private int currentSampleSize;
    private long currentSampleTimeUs;
    private n extractorOutput;
    private long firstSamplePosition;
    private int firstSampleSize;
    private final int flags;
    private boolean hasOutputFormat;
    private boolean hasOutputSeekMap;
    private boolean isWideBand;
    private int numSamplesWithSameSize;
    private final byte[] scratch;
    private b0 seekMap;
    private long timeOffsetUs;
    private e0 trackOutput;
    public static final r FACTORY = new r() { // from class: o2.a
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return b.l();
        }
    };
    private static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] amrSignatureNb = o0.h0("#!AMR\n");
    private static final byte[] amrSignatureWb = o0.h0("#!AMR-WB\n");

    public b() {
        this(0);
    }

    private static int f(int i10, long j6) {
        return (int) ((((long) i10) * 8000000) / j6);
    }

    private boolean i(int i10) {
        return !this.isWideBand && (i10 < 12 || i10 > 14);
    }

    private boolean k(int i10) {
        return this.isWideBand && (i10 < 10 || i10 > 13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] l() {
        return new l[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        frameSizeBytesByTypeWb = iArr;
        MAX_FRAME_SIZE_BYTES = iArr[8];
    }

    public b(int i10) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
    }

    private void e() {
        com.google.android.exoplayer2.util.a.i(this.trackOutput);
        o0.j(this.extractorOutput);
    }

    private b0 g(long j6, boolean z6) {
        return new e(j6, this.firstSamplePosition, f(this.firstSampleSize, 20000L), this.firstSampleSize, z6);
    }

    private boolean j(int i10) {
        return i10 >= 0 && i10 <= 15 && (k(i10) || i(i10));
    }

    private void m() {
        if (this.hasOutputFormat) {
            return;
        }
        this.hasOutputFormat = true;
        boolean z6 = this.isWideBand;
        this.trackOutput.d(new a2.b().e0(z6 ? "audio/amr-wb" : "audio/3gpp").W(MAX_FRAME_SIZE_BYTES).H(1).f0(z6 ? 16000 : 8000).E());
    }

    private void n(long j6, int i10) {
        int i11;
        if (this.hasOutputSeekMap) {
            return;
        }
        int i12 = this.flags;
        if ((i12 & 1) == 0 || j6 == -1 || !((i11 = this.firstSampleSize) == -1 || i11 == this.currentSampleSize)) {
            b0.b bVar = new b0.b(-9223372036854775807L);
            this.seekMap = bVar;
            this.extractorOutput.h(bVar);
            this.hasOutputSeekMap = true;
            return;
        }
        if (this.numSamplesWithSameSize >= 20 || i10 == -1) {
            b0 b0VarG = g(j6, (i12 & 2) != 0);
            this.seekMap = b0VarG;
            this.extractorOutput.h(b0VarG);
            this.hasOutputSeekMap = true;
        }
    }

    private boolean q(m mVar) throws IOException {
        byte[] bArr = amrSignatureNb;
        if (o(mVar, bArr)) {
            this.isWideBand = false;
            mVar.skipFully(bArr.length);
            return true;
        }
        byte[] bArr2 = amrSignatureWb;
        if (!o(mVar, bArr2)) {
            return false;
        }
        this.isWideBand = true;
        mVar.skipFully(bArr2.length);
        return true;
    }

    private int r(m mVar) throws IOException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                int iP = p(mVar);
                this.currentSampleSize = iP;
                this.currentSampleBytesRemaining = iP;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = mVar.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iB = this.trackOutput.b(mVar, this.currentSampleBytesRemaining, true);
        if (iB == -1) {
            return -1;
        }
        int i10 = this.currentSampleBytesRemaining - iB;
        this.currentSampleBytesRemaining = i10;
        if (i10 > 0) {
            return 0;
        }
        this.trackOutput.e(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += 20000;
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
        this.trackOutput = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        if (j6 != 0) {
            b0 b0Var = this.seekMap;
            if (b0Var instanceof e) {
                this.timeOffsetUs = ((e) b0Var).c(j6);
                return;
            }
        }
        this.timeOffsetUs = 0L;
    }

    private int h(int i10) throws v2 {
        String str;
        if (!j(i10)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Illegal AMR ");
            if (this.isWideBand) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb.append(str);
            sb.append(" frame type ");
            sb.append(i10);
            throw v2.a(sb.toString(), null);
        }
        if (this.isWideBand) {
            return frameSizeBytesByTypeWb[i10];
        }
        return frameSizeBytesByTypeNb[i10];
    }

    private static boolean o(m mVar, byte[] bArr) throws IOException {
        mVar.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        mVar.peekFully(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private int p(m mVar) throws IOException {
        mVar.resetPeekPosition();
        mVar.peekFully(this.scratch, 0, 1);
        byte b7 = this.scratch[0];
        if ((b7 & 131) <= 0) {
            return h((b7 >> 3) & 15);
        }
        throw v2.a("Invalid padding bits for frame header " + ((int) b7), null);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        return q(mVar);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        e();
        if (mVar.getPosition() == 0 && !q(mVar)) {
            throw v2.a("Could not find AMR header.", null);
        }
        m();
        int iR = r(mVar);
        n(mVar.getLength(), iR);
        return iR;
    }
}
