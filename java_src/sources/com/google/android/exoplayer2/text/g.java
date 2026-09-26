package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import com.google.common.collect.a0;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class g implements j {
    private static final int INPUT_BUFFER_AVAILABLE = 0;
    private static final int INPUT_BUFFER_DEQUEUED = 1;
    private static final int INPUT_BUFFER_QUEUED = 2;
    private static final int OUTPUT_BUFFERS_COUNT = 2;
    private int inputBufferState;
    private boolean released;
    private final c cueDecoder = new c();
    private final n inputBuffer = new n();
    private final Deque<o> availableOutputBuffers = new ArrayDeque();

    class a extends o {
        a() {
        }

        @Override // com.google.android.exoplayer2.decoder.h
        public void l() {
            g.this.e(this);
        }
    }

    private static final class b implements i {
        private final a0<com.google.android.exoplayer2.text.b> cues;
        private final long timeUs;

        @Override // com.google.android.exoplayer2.text.i
        public int getEventTimeCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.text.i
        public int getNextEventTimeIndex(long j6) {
            return this.timeUs > j6 ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.text.i
        public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
            return j6 >= this.timeUs ? this.cues : a0.x();
        }

        @Override // com.google.android.exoplayer2.text.i
        public long getEventTime(int i10) {
            com.google.android.exoplayer2.util.a.a(i10 == 0);
            return this.timeUs;
        }

        public b(long j6, a0<com.google.android.exoplayer2.text.b> a0Var) {
            this.timeUs = j6;
            this.cues = a0Var;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void release() {
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.text.j
    public void setPositionUs(long j6) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(o oVar) {
        com.google.android.exoplayer2.util.a.g(this.availableOutputBuffers.size() < 2);
        com.google.android.exoplayer2.util.a.a(!this.availableOutputBuffers.contains(oVar));
        oVar.b();
        this.availableOutputBuffers.addFirst(oVar);
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public n dequeueInputBuffer() throws k {
        com.google.android.exoplayer2.util.a.g(!this.released);
        if (this.inputBufferState != 0) {
            return null;
        }
        this.inputBufferState = 1;
        return this.inputBuffer;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public o dequeueOutputBuffer() throws k {
        com.google.android.exoplayer2.util.a.g(!this.released);
        if (this.inputBufferState != 2 || this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        o oVarRemoveFirst = this.availableOutputBuffers.removeFirst();
        if (this.inputBuffer.h()) {
            oVarRemoveFirst.a(4);
        } else {
            n nVar = this.inputBuffer;
            oVarRemoveFirst.n(this.inputBuffer.timeUs, new b(nVar.timeUs, this.cueDecoder.a(((ByteBuffer) com.google.android.exoplayer2.util.a.e(nVar.data)).array())), 0L);
        }
        this.inputBuffer.b();
        this.inputBufferState = 0;
        return oVarRemoveFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(n nVar) throws k {
        com.google.android.exoplayer2.util.a.g(!this.released);
        com.google.android.exoplayer2.util.a.g(this.inputBufferState == 1);
        com.google.android.exoplayer2.util.a.a(this.inputBuffer == nVar);
        this.inputBufferState = 2;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void flush() {
        com.google.android.exoplayer2.util.a.g(!this.released);
        this.inputBuffer.b();
        this.inputBufferState = 0;
    }

    public g() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.availableOutputBuffers.addFirst(new a());
        }
        this.inputBufferState = 0;
    }
}
