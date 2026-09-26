package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.r3;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
final class a1 implements y, com.google.android.exoplayer2.upstream.g0.b<c> {
    private static final int INITIAL_SAMPLE_SIZE = 1024;
    private static final String TAG = "SingleSampleMediaPeriod";
    private final com.google.android.exoplayer2.upstream.k.a dataSourceFactory;
    private final com.google.android.exoplayer2.upstream.o dataSpec;
    private final long durationUs;
    private final h0.a eventDispatcher;
    final a2 format;
    private final com.google.android.exoplayer2.upstream.f0 loadErrorHandlingPolicy;
    boolean loadingFinished;
    byte[] sampleData;
    int sampleSize;
    private final h1 tracks;

    @Nullable
    private final com.google.android.exoplayer2.upstream.m0 transferListener;
    final boolean treatLoadErrorsAsEndOfStream;
    private final ArrayList<b> sampleStreams = new ArrayList<>();
    final com.google.android.exoplayer2.upstream.g0 loader = new com.google.android.exoplayer2.upstream.g0(TAG);

    private final class b implements w0 {
        private static final int STREAM_STATE_END_OF_STREAM = 2;
        private static final int STREAM_STATE_SEND_FORMAT = 0;
        private static final int STREAM_STATE_SEND_SAMPLE = 1;
        private boolean notifiedDownstreamFormat;
        private int streamState;

        private b() {
        }

        public void c() {
            if (this.streamState == 2) {
                this.streamState = 1;
            }
        }

        private void b() {
            if (this.notifiedDownstreamFormat) {
                return;
            }
            a1.this.eventDispatcher.h(com.google.android.exoplayer2.util.x.i(a1.this.format.sampleMimeType), a1.this.format, 0, null, 0L);
            this.notifiedDownstreamFormat = true;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public boolean isReady() {
            return a1.this.loadingFinished;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public void maybeThrowError() throws IOException {
            a1 a1Var = a1.this;
            if (a1Var.treatLoadErrorsAsEndOfStream) {
                return;
            }
            a1Var.loader.j();
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
            b();
            a1 a1Var = a1.this;
            boolean z6 = a1Var.loadingFinished;
            if (z6 && a1Var.sampleData == null) {
                this.streamState = 2;
            }
            int i11 = this.streamState;
            if (i11 == 2) {
                gVar.a(4);
                return -4;
            }
            if ((i10 & 2) == 0 && i11 != 0) {
                if (!z6) {
                    return -3;
                }
                com.google.android.exoplayer2.util.a.e(a1Var.sampleData);
                gVar.a(1);
                gVar.timeUs = 0L;
                if ((i10 & 4) == 0) {
                    gVar.n(a1.this.sampleSize);
                    ByteBuffer byteBuffer = gVar.data;
                    a1 a1Var2 = a1.this;
                    byteBuffer.put(a1Var2.sampleData, 0, a1Var2.sampleSize);
                }
                if ((i10 & 1) == 0) {
                    this.streamState = 2;
                }
                return -4;
            }
            b2Var.format = a1Var.format;
            this.streamState = 1;
            return -5;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int skipData(long j6) {
            b();
            if (j6 > 0 && this.streamState != 2) {
                this.streamState = 2;
                return 1;
            }
            return 0;
        }
    }

    static final class c implements com.google.android.exoplayer2.upstream.g0.e {
        private final com.google.android.exoplayer2.upstream.l0 dataSource;
        public final com.google.android.exoplayer2.upstream.o dataSpec;
        public final long loadTaskId = u.a();

        @Nullable
        private byte[] sampleData;

        @Override // com.google.android.exoplayer2.upstream.g0.e
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.g0.e
        public void load() throws IOException {
            int iD;
            com.google.android.exoplayer2.upstream.l0 l0Var;
            byte[] bArr;
            this.dataSource.g();
            try {
                this.dataSource.c(this.dataSpec);
                do {
                    iD = (int) this.dataSource.d();
                    byte[] bArr2 = this.sampleData;
                    if (bArr2 == null) {
                        this.sampleData = new byte[1024];
                    } else if (iD == bArr2.length) {
                        this.sampleData = Arrays.copyOf(bArr2, bArr2.length * 2);
                    }
                    l0Var = this.dataSource;
                    bArr = this.sampleData;
                } while (l0Var.read(bArr, iD, bArr.length - iD) != -1);
            } finally {
                com.google.android.exoplayer2.upstream.n.a(this.dataSource);
            }
        }

        public c(com.google.android.exoplayer2.upstream.o oVar, com.google.android.exoplayer2.upstream.k kVar) {
            this.dataSpec = oVar;
            this.dataSource = new com.google.android.exoplayer2.upstream.l0(kVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
        for (int i10 = 0; i10 < sVarArr.length; i10++) {
            w0 w0Var = w0VarArr[i10];
            if (w0Var != null && (sVarArr[i10] == null || !zArr[i10])) {
                this.sampleStreams.remove(w0Var);
                w0VarArr[i10] = null;
            }
            if (w0VarArr[i10] == null && sVarArr[i10] != null) {
                b bVar = new b();
                this.sampleStreams.add(bVar);
                w0VarArr[i10] = bVar;
                zArr2[i10] = true;
            }
        }
        return j6;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void discardBuffer(long j6, boolean z6) {
    }

    @Override // com.google.android.exoplayer2.source.y
    public long e(long j6, r3 r3Var) {
        return j6;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getBufferedPositionUs() {
        return this.loadingFinished ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.y
    public h1 getTrackGroups() {
        return this.tracks;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void maybeThrowPrepareError() {
    }

    @Override // com.google.android.exoplayer2.source.y
    public long readDiscontinuity() {
        return -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public void reevaluateBuffer(long j6) {
    }

    @Override // com.google.android.exoplayer2.source.y
    public long seekToUs(long j6) {
        for (int i10 = 0; i10 < this.sampleStreams.size(); i10++) {
            this.sampleStreams.get(i10).c();
        }
        return j6;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        if (this.loadingFinished || this.loader.i() || this.loader.h()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.k kVarCreateDataSource = this.dataSourceFactory.createDataSource();
        com.google.android.exoplayer2.upstream.m0 m0Var = this.transferListener;
        if (m0Var != null) {
            kVarCreateDataSource.b(m0Var);
        }
        c cVar = new c(this.dataSpec, kVarCreateDataSource);
        this.eventDispatcher.u(new u(cVar.loadTaskId, this.dataSpec, this.loader.n(cVar, this, this.loadErrorHandlingPolicy.b(1))), 1, -1, this.format, 0, null, 0L, this.durationUs);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getNextLoadPositionUs() {
        return (this.loadingFinished || this.loader.i()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void c(c cVar, long j6, long j10, boolean z6) {
        com.google.android.exoplayer2.upstream.l0 l0Var = cVar.dataSource;
        u uVar = new u(cVar.loadTaskId, cVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, l0Var.d());
        this.loadErrorHandlingPolicy.a(cVar.loadTaskId);
        this.eventDispatcher.o(uVar, 1, -1, null, 0, null, 0L, this.durationUs);
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void d(c cVar, long j6, long j10) {
        this.sampleSize = (int) cVar.dataSource.d();
        this.sampleData = (byte[]) com.google.android.exoplayer2.util.a.e(cVar.sampleData);
        this.loadingFinished = true;
        com.google.android.exoplayer2.upstream.l0 l0Var = cVar.dataSource;
        u uVar = new u(cVar.loadTaskId, cVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, this.sampleSize);
        this.loadErrorHandlingPolicy.a(cVar.loadTaskId);
        this.eventDispatcher.q(uVar, 1, -1, this.format, 0, null, 0L, this.durationUs);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        return this.loader.i();
    }

    @Override // com.google.android.exoplayer2.upstream.g0.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public com.google.android.exoplayer2.upstream.g0.c g(c cVar, long j6, long j10, IOException iOException, int i10) {
        com.google.android.exoplayer2.upstream.g0.c cVarG;
        com.google.android.exoplayer2.upstream.l0 l0Var = cVar.dataSource;
        u uVar = new u(cVar.loadTaskId, cVar.dataSpec, l0Var.e(), l0Var.f(), j6, j10, l0Var.d());
        long jC = this.loadErrorHandlingPolicy.c(new com.google.android.exoplayer2.upstream.f0.a(uVar, new x(1, -1, this.format, 0, null, 0L, com.google.android.exoplayer2.util.o0.P0(this.durationUs)), iOException, i10));
        boolean z6 = jC == -9223372036854775807L || i10 >= this.loadErrorHandlingPolicy.b(1);
        if (this.treatLoadErrorsAsEndOfStream && z6) {
            com.google.android.exoplayer2.util.t.j(TAG, "Loading failed, treating as end-of-stream.", iOException);
            this.loadingFinished = true;
            cVarG = com.google.android.exoplayer2.upstream.g0.DONT_RETRY;
        } else {
            cVarG = jC != -9223372036854775807L ? com.google.android.exoplayer2.upstream.g0.g(false, jC) : com.google.android.exoplayer2.upstream.g0.DONT_RETRY_FATAL;
        }
        com.google.android.exoplayer2.upstream.g0.c cVar2 = cVarG;
        boolean z10 = !cVar2.c();
        this.eventDispatcher.s(uVar, 1, -1, this.format, 0, null, 0L, this.durationUs, iOException, z10);
        if (z10) {
            this.loadErrorHandlingPolicy.a(cVar.loadTaskId);
        }
        return cVar2;
    }

    public void k() {
        this.loader.l();
    }

    public a1(com.google.android.exoplayer2.upstream.o oVar, com.google.android.exoplayer2.upstream.k.a aVar, @Nullable com.google.android.exoplayer2.upstream.m0 m0Var, a2 a2Var, long j6, com.google.android.exoplayer2.upstream.f0 f0Var, h0.a aVar2, boolean z6) {
        this.dataSpec = oVar;
        this.dataSourceFactory = aVar;
        this.transferListener = m0Var;
        this.format = a2Var;
        this.durationUs = j6;
        this.loadErrorHandlingPolicy = f0Var;
        this.eventDispatcher = aVar2;
        this.treatLoadErrorsAsEndOfStream = z6;
        this.tracks = new h1(new f1(a2Var));
    }

    @Override // com.google.android.exoplayer2.source.y
    public void f(y.a aVar, long j6) {
        aVar.d(this);
    }
}
