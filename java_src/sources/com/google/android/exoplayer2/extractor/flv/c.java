package com.google.android.exoplayer2.extractor.flv;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.c0;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class c implements l {
    public static final r FACTORY = new r() { // from class: com.google.android.exoplayer2.extractor.flv.b
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return c.g();
        }
    };
    private static final int FLV_HEADER_SIZE = 9;
    private static final int FLV_TAG = 4607062;
    private static final int FLV_TAG_HEADER_SIZE = 11;
    private static final int STATE_READING_FLV_HEADER = 1;
    private static final int STATE_READING_TAG_DATA = 4;
    private static final int STATE_READING_TAG_HEADER = 3;
    private static final int STATE_SKIPPING_TO_TAG_HEADER = 2;
    private static final int TAG_TYPE_AUDIO = 8;
    private static final int TAG_TYPE_SCRIPT_DATA = 18;
    private static final int TAG_TYPE_VIDEO = 9;
    private a audioReader;
    private int bytesToNextTagHeader;
    private n extractorOutput;
    private long mediaTagTimestampOffsetUs;
    private boolean outputFirstSample;
    private boolean outputSeekMap;
    private int tagDataSize;
    private long tagTimestampUs;
    private int tagType;
    private f videoReader;
    private final c0 scratch = new c0(4);
    private final c0 headerBuffer = new c0(9);
    private final c0 tagHeaderBuffer = new c0(11);
    private final c0 tagData = new c0();
    private final d metadataReader = new d();
    private int state = 1;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] g() {
        return new l[]{new c()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.extractorOutput = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        if (j6 == 0) {
            this.state = 1;
            this.outputFirstSample = false;
        } else {
            this.state = 3;
        }
        this.bytesToNextTagHeader = 0;
    }

    private void e() {
        if (this.outputSeekMap) {
            return;
        }
        this.extractorOutput.h(new b0.b(-9223372036854775807L));
        this.outputSeekMap = true;
    }

    private long f() {
        if (this.outputFirstSample) {
            return this.mediaTagTimestampOffsetUs + this.tagTimestampUs;
        }
        if (this.metadataReader.d() == -9223372036854775807L) {
            return 0L;
        }
        return this.tagTimestampUs;
    }

    private c0 h(m mVar) throws IOException {
        if (this.tagDataSize > this.tagData.b()) {
            c0 c0Var = this.tagData;
            c0Var.N(new byte[Math.max(c0Var.b() * 2, this.tagDataSize)], 0);
        } else {
            this.tagData.P(0);
        }
        this.tagData.O(this.tagDataSize);
        mVar.readFully(this.tagData.d(), 0, this.tagDataSize);
        return this.tagData;
    }

    private boolean i(m mVar) throws IOException {
        if (!mVar.readFully(this.headerBuffer.d(), 0, 9, true)) {
            return false;
        }
        this.headerBuffer.P(0);
        this.headerBuffer.Q(4);
        int iD = this.headerBuffer.D();
        boolean z6 = (iD & 4) != 0;
        boolean z10 = (iD & 1) != 0;
        if (z6 && this.audioReader == null) {
            this.audioReader = new a(this.extractorOutput.track(8, 1));
        }
        if (z10 && this.videoReader == null) {
            this.videoReader = new f(this.extractorOutput.track(9, 2));
        }
        this.extractorOutput.endTracks();
        this.bytesToNextTagHeader = this.headerBuffer.n() - 5;
        this.state = 2;
        return true;
    }

    private boolean k(m mVar) throws IOException {
        if (!mVar.readFully(this.tagHeaderBuffer.d(), 0, 11, true)) {
            return false;
        }
        this.tagHeaderBuffer.P(0);
        this.tagType = this.tagHeaderBuffer.D();
        this.tagDataSize = this.tagHeaderBuffer.G();
        this.tagTimestampUs = this.tagHeaderBuffer.G();
        this.tagTimestampUs = (((long) (this.tagHeaderBuffer.D() << 24)) | this.tagTimestampUs) * 1000;
        this.tagHeaderBuffer.Q(3);
        this.state = 4;
        return true;
    }

    private void l(m mVar) throws IOException {
        mVar.skipFully(this.bytesToNextTagHeader);
        this.bytesToNextTagHeader = 0;
        this.state = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        mVar.peekFully(this.scratch.d(), 0, 3);
        this.scratch.P(0);
        if (this.scratch.G() != FLV_TAG) {
            return false;
        }
        mVar.peekFully(this.scratch.d(), 0, 2);
        this.scratch.P(0);
        if ((this.scratch.J() & 250) != 0) {
            return false;
        }
        mVar.peekFully(this.scratch.d(), 0, 4);
        this.scratch.P(0);
        int iN = this.scratch.n();
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(iN);
        mVar.peekFully(this.scratch.d(), 0, 4);
        this.scratch.P(0);
        return this.scratch.n() == 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.i(this.extractorOutput);
        while (true) {
            int i10 = this.state;
            if (i10 != 1) {
                if (i10 == 2) {
                    l(mVar);
                } else if (i10 != 3) {
                    if (i10 != 4) {
                        throw new IllegalStateException();
                    }
                    if (j(mVar)) {
                        return 0;
                    }
                } else if (!k(mVar)) {
                    return -1;
                }
            } else if (!i(mVar)) {
                return -1;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean j(m mVar) throws IOException {
        boolean zA;
        boolean z6;
        long j6;
        long jF = f();
        int i10 = this.tagType;
        if (i10 == 8 && this.audioReader != null) {
            e();
            zA = this.audioReader.a(h(mVar), jF);
        } else if (i10 == 9 && this.videoReader != null) {
            e();
            zA = this.videoReader.a(h(mVar), jF);
        } else {
            if (i10 == 18 && !this.outputSeekMap) {
                zA = this.metadataReader.a(h(mVar), jF);
                long jD = this.metadataReader.d();
                if (jD != -9223372036854775807L) {
                    this.extractorOutput.h(new z(this.metadataReader.e(), this.metadataReader.f(), jD));
                    this.outputSeekMap = true;
                }
            } else {
                mVar.skipFully(this.tagDataSize);
                zA = false;
                z6 = false;
            }
            if (!this.outputFirstSample && zA) {
                this.outputFirstSample = true;
                if (this.metadataReader.d() == -9223372036854775807L) {
                    j6 = -this.tagTimestampUs;
                } else {
                    j6 = 0;
                }
                this.mediaTagTimestampOffsetUs = j6;
            }
            this.bytesToNextTagHeader = 4;
            this.state = 2;
            return z6;
        }
        z6 = true;
        if (!this.outputFirstSample) {
            this.outputFirstSample = true;
            if (this.metadataReader.d() == -9223372036854775807L) {
                j6 = -this.tagTimestampUs;
            } else {
                j6 = 0;
            }
            this.mediaTagTimestampOffsetUs = j6;
        }
        this.bytesToNextTagHeader = 4;
        this.state = 2;
        return z6;
    }
}
