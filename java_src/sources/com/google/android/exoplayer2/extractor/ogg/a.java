package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.o;
import com.google.android.exoplayer2.util.o0;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
final class a implements g {
    private static final int DEFAULT_OFFSET = 30000;
    private static final int MATCH_BYTE_RANGE = 100000;
    private static final int MATCH_RANGE = 72000;
    private static final int STATE_IDLE = 4;
    private static final int STATE_READ_LAST_PAGE = 1;
    private static final int STATE_SEEK = 2;
    private static final int STATE_SEEK_TO_END = 0;
    private static final int STATE_SKIP = 3;
    private long end;
    private long endGranule;
    private final f pageHeader;
    private final long payloadEndPosition;
    private final long payloadStartPosition;
    private long positionBeforeSeekToEnd;
    private long start;
    private long startGranule;
    private int state;
    private final i streamReader;
    private long targetGranule;
    private long totalGranules;

    private final class b implements b0 {
        private b() {
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean isSeekable() {
            return true;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long getDurationUs() {
            return a.this.streamReader.b(a.this.totalGranules);
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a getSeekPoints(long j6) {
            return new b0.a(new c0(j6, o0.q((a.this.payloadStartPosition + ((a.this.streamReader.c(j6) * (a.this.payloadEndPosition - a.this.payloadStartPosition)) / a.this.totalGranules)) - 30000, a.this.payloadStartPosition, a.this.payloadEndPosition - 1)));
        }
    }

    private long g(m mVar) throws IOException {
        if (this.start == this.end) {
            return -1L;
        }
        long position = mVar.getPosition();
        if (!this.pageHeader.d(mVar, this.end)) {
            long j6 = this.start;
            if (j6 != position) {
                return j6;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.a(mVar, false);
        mVar.resetPeekPosition();
        long j10 = this.targetGranule;
        f fVar = this.pageHeader;
        long j11 = fVar.granulePosition;
        long j12 = j10 - j11;
        int i10 = fVar.headerSize + fVar.bodySize;
        if (0 <= j12 && j12 < 72000) {
            return -1L;
        }
        if (j12 < 0) {
            this.end = position;
            this.endGranule = j11;
        } else {
            this.start = mVar.getPosition() + ((long) i10);
            this.startGranule = this.pageHeader.granulePosition;
        }
        long j13 = this.end;
        long j14 = this.start;
        if (j13 - j14 < 100000) {
            this.end = j14;
            return j14;
        }
        long position2 = mVar.getPosition() - (((long) i10) * (j12 <= 0 ? 2L : 1L));
        long j15 = this.end;
        long j16 = this.start;
        return o0.q(position2 + ((j12 * (j15 - j16)) / (this.endGranule - this.startGranule)), j16, j15 - 1);
    }

    private void i(m mVar) throws IOException {
        while (true) {
            this.pageHeader.c(mVar);
            this.pageHeader.a(mVar, false);
            f fVar = this.pageHeader;
            if (fVar.granulePosition > this.targetGranule) {
                mVar.resetPeekPosition();
                return;
            } else {
                mVar.skipFully(fVar.headerSize + fVar.bodySize);
                this.start = mVar.getPosition();
                this.startGranule = this.pageHeader.granulePosition;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    public long a(m mVar) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            long position = mVar.getPosition();
            this.positionBeforeSeekToEnd = position;
            this.state = 1;
            long j6 = this.payloadEndPosition - 65307;
            if (j6 > position) {
                return j6;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                long jG = g(mVar);
                if (jG != -1) {
                    return jG;
                }
                this.state = 3;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(mVar);
            this.state = 4;
            return -(this.startGranule + 2);
        }
        this.totalGranules = h(mVar);
        this.state = 4;
        return this.positionBeforeSeekToEnd;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b createSeekMap() {
        if (this.totalGranules != 0) {
            return new b();
        }
        return null;
    }

    @VisibleForTesting
    long h(m mVar) throws IOException {
        this.pageHeader.b();
        if (!this.pageHeader.c(mVar)) {
            throw new EOFException();
        }
        this.pageHeader.a(mVar, false);
        f fVar = this.pageHeader;
        mVar.skipFully(fVar.headerSize + fVar.bodySize);
        long j6 = this.pageHeader.granulePosition;
        while (true) {
            f fVar2 = this.pageHeader;
            if ((fVar2.type & 4) == 4 || !fVar2.c(mVar) || mVar.getPosition() >= this.payloadEndPosition || !this.pageHeader.a(mVar, true)) {
                break;
            }
            f fVar3 = this.pageHeader;
            if (!o.e(mVar, fVar3.headerSize + fVar3.bodySize)) {
                break;
            }
            j6 = this.pageHeader.granulePosition;
        }
        return j6;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.g
    public void startSeek(long j6) {
        this.targetGranule = o0.q(j6, 0L, this.totalGranules - 1);
        this.state = 2;
        this.start = this.payloadStartPosition;
        this.end = this.payloadEndPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    public a(i iVar, long j6, long j10, long j11, long j12, boolean z6) {
        boolean z10;
        if (j6 >= 0 && j10 > j6) {
            z10 = true;
        } else {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.streamReader = iVar;
        this.payloadStartPosition = j6;
        this.payloadEndPosition = j10;
        if (j11 != j10 - j6 && !z6) {
            this.state = 0;
        } else {
            this.totalGranules = j12;
            this.state = 4;
        }
        this.pageHeader = new f();
    }
}
