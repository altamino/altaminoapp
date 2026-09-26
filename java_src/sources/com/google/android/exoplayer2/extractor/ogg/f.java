package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.o;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
final class f {
    private static final int CAPTURE_PATTERN = 1332176723;
    private static final int CAPTURE_PATTERN_SIZE = 4;
    public static final int EMPTY_PAGE_HEADER_SIZE = 27;
    public static final int MAX_PAGE_PAYLOAD = 65025;
    public static final int MAX_PAGE_SIZE = 65307;
    public static final int MAX_SEGMENT_COUNT = 255;
    public int bodySize;
    public long granulePosition;
    public int headerSize;
    public long pageChecksum;
    public int pageSegmentCount;
    public long pageSequenceNumber;
    public int revision;
    public long streamSerialNumber;
    public int type;
    public final int[] laces = new int[255];
    private final c0 scratch = new c0(255);

    public void b() {
        this.revision = 0;
        this.type = 0;
        this.granulePosition = 0L;
        this.streamSerialNumber = 0L;
        this.pageSequenceNumber = 0L;
        this.pageChecksum = 0L;
        this.pageSegmentCount = 0;
        this.headerSize = 0;
        this.bodySize = 0;
    }

    public boolean c(m mVar) throws IOException {
        return d(mVar, -1L);
    }

    f() {
    }

    public boolean a(m mVar, boolean z6) throws IOException {
        b();
        this.scratch.L(27);
        if (!o.b(mVar, this.scratch.d(), 0, 27, z6) || this.scratch.F() != 1332176723) {
            return false;
        }
        int iD = this.scratch.D();
        this.revision = iD;
        if (iD != 0) {
            if (z6) {
                return false;
            }
            throw v2.c("unsupported bit stream revision");
        }
        this.type = this.scratch.D();
        this.granulePosition = this.scratch.r();
        this.streamSerialNumber = this.scratch.t();
        this.pageSequenceNumber = this.scratch.t();
        this.pageChecksum = this.scratch.t();
        int iD2 = this.scratch.D();
        this.pageSegmentCount = iD2;
        this.headerSize = iD2 + 27;
        this.scratch.L(iD2);
        if (!o.b(mVar, this.scratch.d(), 0, this.pageSegmentCount, z6)) {
            return false;
        }
        for (int i10 = 0; i10 < this.pageSegmentCount; i10++) {
            this.laces[i10] = this.scratch.D();
            this.bodySize += this.laces[i10];
        }
        return true;
    }

    public boolean d(m mVar, long j6) throws IOException {
        boolean z6;
        if (mVar.getPosition() == mVar.getPeekPosition()) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.scratch.L(4);
        while (true) {
            if ((j6 != -1 && mVar.getPosition() + 4 >= j6) || !o.b(mVar, this.scratch.d(), 0, 4, true)) {
                break;
            }
            this.scratch.P(0);
            if (this.scratch.F() == 1332176723) {
                mVar.resetPeekPosition();
                return true;
            }
            mVar.skipFully(1);
        }
        do {
            if (j6 != -1 && mVar.getPosition() >= j6) {
                break;
            }
        } while (mVar.skip(1) != -1);
        return false;
    }
}
