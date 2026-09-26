package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.r3;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class v implements y, y.a {
    private final com.google.android.exoplayer2.upstream.b allocator;

    @Nullable
    private y.a callback;
    public final b0.b id;

    @Nullable
    private a listener;
    private y mediaPeriod;
    private b0 mediaSource;
    private boolean notifiedPrepareError;
    private long preparePositionOverrideUs = -9223372036854775807L;
    private final long preparePositionUs;

    public interface a {
        void a(b0.b bVar, IOException iOException);

        void b(b0.b bVar);
    }

    private long i(long j6) {
        long j10 = this.preparePositionOverrideUs;
        return j10 != -9223372036854775807L ? j10 : j6;
    }

    @Override // com.google.android.exoplayer2.source.y
    public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
        long j10;
        long j11 = this.preparePositionOverrideUs;
        if (j11 == -9223372036854775807L || j6 != this.preparePositionUs) {
            j10 = j6;
        } else {
            this.preparePositionOverrideUs = -9223372036854775807L;
            j10 = j11;
        }
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).b(sVarArr, zArr, w0VarArr, zArr2, j10);
    }

    public long g() {
        return this.preparePositionOverrideUs;
    }

    public long h() {
        return this.preparePositionUs;
    }

    public void k(long j6) {
        this.preparePositionOverrideUs = j6;
    }

    public void a(b0.b bVar) {
        long jI = i(this.preparePositionUs);
        y yVarC = ((b0) com.google.android.exoplayer2.util.a.e(this.mediaSource)).c(bVar, this.allocator, jI);
        this.mediaPeriod = yVarC;
        if (this.callback != null) {
            yVarC.f(this, jI);
        }
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        y yVar = this.mediaPeriod;
        return yVar != null && yVar.continueLoading(j6);
    }

    @Override // com.google.android.exoplayer2.source.y.a
    public void d(y yVar) {
        ((y.a) com.google.android.exoplayer2.util.o0.j(this.callback)).d(this);
        a aVar = this.listener;
        if (aVar != null) {
            aVar.b(this.id);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public void discardBuffer(long j6, boolean z6) {
        ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).discardBuffer(j6, z6);
    }

    @Override // com.google.android.exoplayer2.source.y
    public long e(long j6, r3 r3Var) {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).e(j6, r3Var);
    }

    @Override // com.google.android.exoplayer2.source.y
    public void f(y.a aVar, long j6) {
        this.callback = aVar;
        y yVar = this.mediaPeriod;
        if (yVar != null) {
            yVar.f(this, i(this.preparePositionUs));
        }
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getBufferedPositionUs() {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getNextLoadPositionUs() {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.y
    public h1 getTrackGroups() {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        y yVar = this.mediaPeriod;
        return yVar != null && yVar.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.x0.a
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public void c(y yVar) {
        ((y.a) com.google.android.exoplayer2.util.o0.j(this.callback)).c(this);
    }

    public void l() {
        if (this.mediaPeriod != null) {
            ((b0) com.google.android.exoplayer2.util.a.e(this.mediaSource)).f(this.mediaPeriod);
        }
    }

    public void m(b0 b0Var) {
        com.google.android.exoplayer2.util.a.g(this.mediaSource == null);
        this.mediaSource = b0Var;
    }

    @Override // com.google.android.exoplayer2.source.y
    public void maybeThrowPrepareError() throws IOException {
        try {
            y yVar = this.mediaPeriod;
            if (yVar != null) {
                yVar.maybeThrowPrepareError();
            } else {
                b0 b0Var = this.mediaSource;
                if (b0Var != null) {
                    b0Var.maybeThrowSourceInfoRefreshError();
                }
            }
        } catch (IOException e) {
            a aVar = this.listener;
            if (aVar == null) {
                throw e;
            }
            if (this.notifiedPrepareError) {
                return;
            }
            this.notifiedPrepareError = true;
            aVar.a(this.id, e);
        }
    }

    @Override // com.google.android.exoplayer2.source.y
    public long readDiscontinuity() {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).readDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public void reevaluateBuffer(long j6) {
        ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).reevaluateBuffer(j6);
    }

    @Override // com.google.android.exoplayer2.source.y
    public long seekToUs(long j6) {
        return ((y) com.google.android.exoplayer2.util.o0.j(this.mediaPeriod)).seekToUs(j6);
    }

    public v(b0.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j6) {
        this.id = bVar;
        this.allocator = bVar2;
        this.preparePositionUs = j6;
    }
}
