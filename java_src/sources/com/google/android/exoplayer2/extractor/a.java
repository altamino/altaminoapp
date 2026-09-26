package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a {
    private static final long MAX_SKIP_BYTES = 262144;
    private final int minimumSearchRange;
    protected final C0169a seekMap;

    @Nullable
    protected c seekOperationParams;
    protected final f timestampSeeker;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.extractor.a$a, reason: collision with other inner class name */
    public static class C0169a implements b0 {
        private final long approxBytesPerFrame;
        private final long ceilingBytePosition;
        private final long ceilingTimePosition;
        private final long durationUs;
        private final long floorBytePosition;
        private final long floorTimePosition;
        private final d seekTimestampConverter;

        @Override // com.google.android.exoplayer2.extractor.b0
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean isSeekable() {
            return true;
        }

        public long g(long j6) {
            return this.seekTimestampConverter.a(j6);
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a getSeekPoints(long j6) {
            return new b0.a(new c0(j6, c.h(this.seekTimestampConverter.a(j6), this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame)));
        }

        public C0169a(d dVar, long j6, long j10, long j11, long j12, long j13, long j14) {
            this.seekTimestampConverter = dVar;
            this.durationUs = j6;
            this.floorTimePosition = j10;
            this.ceilingTimePosition = j11;
            this.floorBytePosition = j12;
            this.ceilingBytePosition = j13;
            this.approxBytesPerFrame = j14;
        }
    }

    public static final class b implements d {
        @Override // com.google.android.exoplayer2.extractor.a.d
        public long a(long j6) {
            return j6;
        }
    }

    protected static class c {
        private final long approxBytesPerFrame;
        private long ceilingBytePosition;
        private long ceilingTimePosition;
        private long floorBytePosition;
        private long floorTimePosition;
        private long nextSearchBytePosition;
        private final long seekTimeUs;
        private final long targetTimePosition;

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.ceilingBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.floorBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.nextSearchBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.seekTimeUs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.targetTimePosition;
        }

        protected static long h(long j6, long j10, long j11, long j12, long j13, long j14) {
            if (j12 + 1 >= j13 || j10 + 1 >= j11) {
                return j12;
            }
            long j15 = (long) ((j6 - j10) * ((j13 - j12) / (j11 - j10)));
            return o0.q(((j15 + j12) - j14) - (j15 / 20), j12, j13 - 1);
        }

        private void n() {
            this.nextSearchBytePosition = h(this.targetTimePosition, this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j6, long j10) {
            this.ceilingTimePosition = j6;
            this.ceilingBytePosition = j10;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j6, long j10) {
            this.floorTimePosition = j6;
            this.floorBytePosition = j10;
            n();
        }

        protected c(long j6, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.seekTimeUs = j6;
            this.targetTimePosition = j10;
            this.floorTimePosition = j11;
            this.ceilingTimePosition = j12;
            this.floorBytePosition = j13;
            this.ceilingBytePosition = j14;
            this.approxBytesPerFrame = j15;
            this.nextSearchBytePosition = h(j10, j11, j12, j13, j14, j15);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface d {
        long a(long j6);
    }

    public static final class e {
        public static final e NO_TIMESTAMP_IN_RANGE_RESULT = new e(-3, -9223372036854775807L, -1);
        public static final int TYPE_NO_TIMESTAMP = -3;
        public static final int TYPE_POSITION_OVERESTIMATED = -1;
        public static final int TYPE_POSITION_UNDERESTIMATED = -2;
        public static final int TYPE_TARGET_TIMESTAMP_FOUND = 0;
        private final long bytePositionToUpdate;
        private final long timestampToUpdate;
        private final int type;

        public static e d(long j6, long j10) {
            return new e(-1, j6, j10);
        }

        public static e e(long j6) {
            return new e(0, -9223372036854775807L, j6);
        }

        public static e f(long j6, long j10) {
            return new e(-2, j6, j10);
        }

        private e(int i10, long j6, long j10) {
            this.type = i10;
            this.timestampToUpdate = j6;
            this.bytePositionToUpdate = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface f {
        void a();

        e b(m mVar, long j6) throws IOException;
    }

    public final b0 b() {
        return this.seekMap;
    }

    public final boolean d() {
        return this.seekOperationParams != null;
    }

    protected final void e(boolean z6, long j6) {
        this.seekOperationParams = null;
        this.timestampSeeker.a();
        f(z6, j6);
    }

    protected void f(boolean z6, long j6) {
    }

    protected a(d dVar, f fVar, long j6, long j10, long j11, long j12, long j13, long j14, int i10) {
        this.timestampSeeker = fVar;
        this.minimumSearchRange = i10;
        this.seekMap = new C0169a(dVar, j6, j10, j11, j12, j13, j14);
    }

    protected c a(long j6) {
        return new c(j6, this.seekMap.g(j6), this.seekMap.floorTimePosition, this.seekMap.ceilingTimePosition, this.seekMap.floorBytePosition, this.seekMap.ceilingBytePosition, this.seekMap.approxBytesPerFrame);
    }

    public int c(m mVar, a0 a0Var) throws IOException {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.i(this.seekOperationParams);
            long j6 = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j6 <= this.minimumSearchRange) {
                e(false, j6);
                return g(mVar, j6, a0Var);
            }
            if (!i(mVar, jK)) {
                return g(mVar, jK, a0Var);
            }
            mVar.resetPeekPosition();
            e eVarB = this.timestampSeeker.b(mVar, cVar.m());
            int i10 = eVarB.type;
            if (i10 == -3) {
                e(false, jK);
                return g(mVar, jK, a0Var);
            }
            if (i10 == -2) {
                cVar.p(eVarB.timestampToUpdate, eVarB.bytePositionToUpdate);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(mVar, eVarB.bytePositionToUpdate);
                    e(true, eVarB.bytePositionToUpdate);
                    return g(mVar, eVarB.bytePositionToUpdate, a0Var);
                }
                cVar.o(eVarB.timestampToUpdate, eVarB.bytePositionToUpdate);
            }
        }
    }

    public final void h(long j6) {
        c cVar = this.seekOperationParams;
        if (cVar == null || cVar.l() != j6) {
            this.seekOperationParams = a(j6);
        }
    }

    protected final int g(m mVar, long j6, a0 a0Var) {
        if (j6 == mVar.getPosition()) {
            return 0;
        }
        a0Var.position = j6;
        return 1;
    }

    protected final boolean i(m mVar, long j6) throws IOException {
        long position = j6 - mVar.getPosition();
        if (position >= 0 && position <= 262144) {
            mVar.skipFully((int) position);
            return true;
        }
        return false;
    }
}
