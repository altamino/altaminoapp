package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.z;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class m implements com.google.android.exoplayer2.extractor.l {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int STATE_CREATED = 0;
    private static final int STATE_EXTRACTING = 2;
    private static final int STATE_FINISHED = 4;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_RELEASED = 5;
    private static final int STATE_SEEKING = 3;
    private int bytesRead;
    private com.google.android.exoplayer2.extractor.n extractorOutput;
    private final a2 format;
    private final j subtitleDecoder;
    private e0 trackOutput;
    private final d cueEncoder = new d();
    private final c0 subtitleData = new c0();
    private final List<Long> timestamps = new ArrayList();
    private final List<c0> samples = new ArrayList();
    private int state = 0;
    private long seekTimeUs = -9223372036854775807L;

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        return true;
    }

    private void a() throws com.google.android.exoplayer2.decoder.f, IOException {
        try {
            n nVarDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            while (nVarDequeueInputBuffer == null) {
                Thread.sleep(5L);
                nVarDequeueInputBuffer = this.subtitleDecoder.dequeueInputBuffer();
            }
            nVarDequeueInputBuffer.n(this.bytesRead);
            nVarDequeueInputBuffer.data.put(this.subtitleData.d(), 0, this.bytesRead);
            nVarDequeueInputBuffer.data.limit(this.bytesRead);
            this.subtitleDecoder.queueInputBuffer(nVarDequeueInputBuffer);
            o oVarDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            while (oVarDequeueOutputBuffer == null) {
                Thread.sleep(5L);
                oVarDequeueOutputBuffer = this.subtitleDecoder.dequeueOutputBuffer();
            }
            for (int i10 = 0; i10 < oVarDequeueOutputBuffer.getEventTimeCount(); i10++) {
                byte[] bArrA = this.cueEncoder.a(oVarDequeueOutputBuffer.getCues(oVarDequeueOutputBuffer.getEventTime(i10)));
                this.timestamps.add(Long.valueOf(oVarDequeueOutputBuffer.getEventTime(i10)));
                this.samples.add(new c0(bArrA));
            }
            oVarDequeueOutputBuffer.l();
        } catch (k e) {
            throw v2.a("SubtitleDecoder failed.", e);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    private boolean e(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int iB = this.subtitleData.b();
        int i10 = this.bytesRead;
        if (iB == i10) {
            this.subtitleData.c(i10 + 1024);
        }
        int i11 = mVar.read(this.subtitleData.d(), this.bytesRead, this.subtitleData.b() - this.bytesRead);
        if (i11 != -1) {
            this.bytesRead += i11;
        }
        long length = mVar.getLength();
        return (length != -1 && ((long) this.bytesRead) == length) || i11 == -1;
    }

    private void g() {
        com.google.android.exoplayer2.util.a.i(this.trackOutput);
        com.google.android.exoplayer2.util.a.g(this.timestamps.size() == this.samples.size());
        long j6 = this.seekTimeUs;
        for (int iG = j6 == -9223372036854775807L ? 0 : o0.g(this.timestamps, Long.valueOf(j6), true, true); iG < this.samples.size(); iG++) {
            c0 c0Var = this.samples.get(iG);
            c0Var.P(0);
            int length = c0Var.d().length;
            this.trackOutput.c(c0Var, length);
            this.trackOutput.e(this.timestamps.get(iG).longValue(), 1, length, 0, null);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws com.google.android.exoplayer2.decoder.f, IOException {
        int i10 = this.state;
        com.google.android.exoplayer2.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        if (this.state == 1) {
            this.subtitleData.L(mVar.getLength() != -1 ? com.google.common.primitives.e.d(mVar.getLength()) : 1024);
            this.bytesRead = 0;
            this.state = 2;
        }
        if (this.state == 2 && e(mVar)) {
            a();
            g();
            this.state = 4;
        }
        if (this.state == 3 && f(mVar)) {
            g();
            this.state = 4;
        }
        return this.state == 4 ? -1 : 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        com.google.android.exoplayer2.util.a.g(this.state == 0);
        this.extractorOutput = nVar;
        this.trackOutput = nVar.track(0, 3);
        this.extractorOutput.endTracks();
        this.extractorOutput.h(new z(new long[]{0}, new long[]{0}, -9223372036854775807L));
        this.trackOutput.d(this.format);
        this.state = 1;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
        if (this.state == 5) {
            return;
        }
        this.subtitleDecoder.release();
        this.state = 5;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        int i10 = this.state;
        com.google.android.exoplayer2.util.a.g((i10 == 0 || i10 == 5) ? false : true);
        this.seekTimeUs = j10;
        if (this.state == 2) {
            this.state = 1;
        }
        if (this.state == 4) {
            this.state = 3;
        }
    }

    public m(j jVar, a2 a2Var) {
        this.subtitleDecoder = jVar;
        this.format = a2Var.b().e0("text/x-exoplayer-cues").I(a2Var.sampleMimeType).E();
    }

    private boolean f(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int iD;
        if (mVar.getLength() != -1) {
            iD = com.google.common.primitives.e.d(mVar.getLength());
        } else {
            iD = 1024;
        }
        if (mVar.skip(iD) == -1) {
            return true;
        }
        return false;
    }
}
