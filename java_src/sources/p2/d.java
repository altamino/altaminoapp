package p2;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.t;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements l {
    private static final int BUFFER_LENGTH = 32768;
    public static final r FACTORY = new r() { // from class: p2.c
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return d.i();
        }
    };
    public static final int FLAG_DISABLE_ID3_METADATA = 1;
    private static final int SAMPLE_NUMBER_UNKNOWN = -1;
    private static final int STATE_GET_FRAME_START_MARKER = 4;
    private static final int STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES = 1;
    private static final int STATE_READ_FRAMES = 5;
    private static final int STATE_READ_ID3_METADATA = 0;
    private static final int STATE_READ_METADATA_BLOCKS = 3;
    private static final int STATE_READ_STREAM_MARKER = 2;
    private b binarySearchSeeker;
    private final c0 buffer;
    private int currentFrameBytesWritten;
    private long currentFrameFirstSampleNumber;
    private n extractorOutput;
    private v flacStreamMetadata;
    private int frameStartMarker;

    @Nullable
    private Metadata id3Metadata;
    private final boolean id3MetadataDisabled;
    private int minFrameSize;
    private final s.a sampleNumberHolder;
    private int state;
    private final byte[] streamMarkerAndInfoBlock;
    private e0 trackOutput;

    public d() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] i() {
        return new l[]{new d()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        t.c(mVar, false);
        return t.a(mVar);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    public d(int i10) {
        this.streamMarkerAndInfoBlock = new byte[42];
        this.buffer = new c0(new byte[32768], 0);
        this.id3MetadataDisabled = (i10 & 1) != 0;
        this.sampleNumberHolder = new s.a();
        this.state = 0;
    }

    private long e(c0 c0Var, boolean z6) {
        boolean zD;
        com.google.android.exoplayer2.util.a.e(this.flacStreamMetadata);
        int iE = c0Var.e();
        while (iE <= c0Var.f() - 16) {
            c0Var.P(iE);
            if (s.d(c0Var, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                c0Var.P(iE);
                return this.sampleNumberHolder.sampleNumber;
            }
            iE++;
        }
        if (!z6) {
            c0Var.P(iE);
            return -1L;
        }
        while (iE <= c0Var.f() - this.minFrameSize) {
            c0Var.P(iE);
            try {
                zD = s.d(c0Var, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder);
            } catch (IndexOutOfBoundsException unused) {
                zD = false;
            }
            if (c0Var.e() <= c0Var.f() && zD) {
                c0Var.P(iE);
                return this.sampleNumberHolder.sampleNumber;
            }
            iE++;
        }
        c0Var.P(c0Var.f());
        return -1L;
    }

    private b0 g(long j6, long j10) {
        com.google.android.exoplayer2.util.a.e(this.flacStreamMetadata);
        v vVar = this.flacStreamMetadata;
        if (vVar.seekTable != null) {
            return new u(vVar, j6);
        }
        if (j10 == -1 || vVar.totalSamples <= 0) {
            return new b0.b(vVar.g());
        }
        b bVar = new b(vVar, this.frameStartMarker, j6, j10);
        this.binarySearchSeeker = bVar;
        return bVar.b();
    }

    private void h(m mVar) throws IOException {
        byte[] bArr = this.streamMarkerAndInfoBlock;
        mVar.peekFully(bArr, 0, bArr.length);
        mVar.resetPeekPosition();
        this.state = 2;
    }

    private void j() {
        ((e0) o0.j(this.trackOutput)).e((this.currentFrameFirstSampleNumber * 1000000) / ((long) ((v) o0.j(this.flacStreamMetadata)).sampleRate), 1, this.currentFrameBytesWritten, 0, null);
    }

    private int k(m mVar, a0 a0Var) throws IOException {
        boolean z6;
        com.google.android.exoplayer2.util.a.e(this.trackOutput);
        com.google.android.exoplayer2.util.a.e(this.flacStreamMetadata);
        b bVar = this.binarySearchSeeker;
        if (bVar != null && bVar.d()) {
            return this.binarySearchSeeker.c(mVar, a0Var);
        }
        if (this.currentFrameFirstSampleNumber == -1) {
            this.currentFrameFirstSampleNumber = s.i(mVar, this.flacStreamMetadata);
            return 0;
        }
        int iF = this.buffer.f();
        if (iF < 32768) {
            int i10 = mVar.read(this.buffer.d(), iF, 32768 - iF);
            z6 = i10 == -1;
            if (!z6) {
                this.buffer.O(iF + i10);
            } else if (this.buffer.a() == 0) {
                j();
                return -1;
            }
        } else {
            z6 = false;
        }
        int iE = this.buffer.e();
        int i11 = this.currentFrameBytesWritten;
        int i12 = this.minFrameSize;
        if (i11 < i12) {
            c0 c0Var = this.buffer;
            c0Var.Q(Math.min(i12 - i11, c0Var.a()));
        }
        long jE = e(this.buffer, z6);
        int iE2 = this.buffer.e() - iE;
        this.buffer.P(iE);
        this.trackOutput.c(this.buffer, iE2);
        this.currentFrameBytesWritten += iE2;
        if (jE != -1) {
            j();
            this.currentFrameBytesWritten = 0;
            this.currentFrameFirstSampleNumber = jE;
        }
        if (this.buffer.a() < 16) {
            int iA = this.buffer.a();
            System.arraycopy(this.buffer.d(), this.buffer.e(), this.buffer.d(), 0, iA);
            this.buffer.P(0);
            this.buffer.O(iA);
        }
        return 0;
    }

    private void l(m mVar) throws IOException {
        this.id3Metadata = t.d(mVar, !this.id3MetadataDisabled);
        this.state = 1;
    }

    private void m(m mVar) throws IOException {
        t.a aVar = new t.a(this.flacStreamMetadata);
        boolean zE = false;
        while (!zE) {
            zE = t.e(mVar, aVar);
            this.flacStreamMetadata = (v) o0.j(aVar.flacStreamMetadata);
        }
        com.google.android.exoplayer2.util.a.e(this.flacStreamMetadata);
        this.minFrameSize = Math.max(this.flacStreamMetadata.minFrameSize, 6);
        ((e0) o0.j(this.trackOutput)).d(this.flacStreamMetadata.h(this.streamMarkerAndInfoBlock, this.id3Metadata));
        this.state = 4;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            l(mVar);
            return 0;
        }
        if (i10 == 1) {
            h(mVar);
            return 0;
        }
        if (i10 == 2) {
            n(mVar);
            return 0;
        }
        if (i10 == 3) {
            m(mVar);
            return 0;
        }
        if (i10 == 4) {
            f(mVar);
            return 0;
        }
        if (i10 == 5) {
            return k(mVar, a0Var);
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
        this.trackOutput = nVar.track(0, 1);
        nVar.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 0;
        } else {
            b bVar = this.binarySearchSeeker;
            if (bVar != null) {
                bVar.h(j10);
            }
        }
        this.currentFrameFirstSampleNumber = j10 != 0 ? -1L : 0L;
        this.currentFrameBytesWritten = 0;
        this.buffer.L(0);
    }

    private void f(m mVar) throws IOException {
        this.frameStartMarker = t.b(mVar);
        ((n) o0.j(this.extractorOutput)).h(g(mVar.getPosition(), mVar.getLength()));
        this.state = 5;
    }

    private void n(m mVar) throws IOException {
        t.i(mVar);
        this.state = 3;
    }
}
