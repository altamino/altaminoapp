package com.google.android.exoplayer2.text.cea;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.text.n;
import com.google.android.exoplayer2.text.o;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
abstract class e implements j {
    private static final int NUM_INPUT_BUFFERS = 10;
    private static final int NUM_OUTPUT_BUFFERS = 2;
    private final ArrayDeque<b> availableInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<o> availableOutputBuffers;

    @Nullable
    private b dequeuedInputBuffer;
    private long playbackPositionUs;
    private long queuedInputBufferCount;
    private final PriorityQueue<b> queuedInputBuffers;

    private static final class b extends n implements Comparable<b> {
        private long queuedInputBufferCount;

        private b() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            if (h() != bVar.h()) {
                if (!h()) {
                    return -1;
                }
                return 1;
            }
            long j6 = this.timeUs - bVar.timeUs;
            if (j6 == 0) {
                j6 = this.queuedInputBufferCount - bVar.queuedInputBufferCount;
                if (j6 == 0) {
                    return 0;
                }
            }
            if (j6 <= 0) {
                return -1;
            }
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends o {
        private h.a<c> owner;

        @Override // com.google.android.exoplayer2.decoder.h
        public final void l() {
            this.owner.a(this);
        }

        public c(h.a<c> aVar) {
            this.owner = aVar;
        }
    }

    protected abstract i a();

    protected abstract void b(n nVar);

    protected final long f() {
        return this.playbackPositionUs;
    }

    protected abstract boolean g();

    @Override // com.google.android.exoplayer2.decoder.d
    public void release() {
    }

    @Override // com.google.android.exoplayer2.text.j
    public void setPositionUs(long j6) {
        this.playbackPositionUs = j6;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public n dequeueInputBuffer() throws k {
        com.google.android.exoplayer2.util.a.g(this.dequeuedInputBuffer == null);
        if (this.availableInputBuffers.isEmpty()) {
            return null;
        }
        b bVarPollFirst = this.availableInputBuffers.pollFirst();
        this.dequeuedInputBuffer = bVarPollFirst;
        return bVarPollFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public o dequeueOutputBuffer() throws k {
        if (this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        while (!this.queuedInputBuffers.isEmpty() && ((b) o0.j(this.queuedInputBuffers.peek())).timeUs <= this.playbackPositionUs) {
            b bVar = (b) o0.j(this.queuedInputBuffers.poll());
            if (bVar.h()) {
                o oVar = (o) o0.j(this.availableOutputBuffers.pollFirst());
                oVar.a(4);
                i(bVar);
                return oVar;
            }
            b(bVar);
            if (g()) {
                i iVarA = a();
                o oVar2 = (o) o0.j(this.availableOutputBuffers.pollFirst());
                oVar2.n(bVar.timeUs, iVarA, Long.MAX_VALUE);
                i(bVar);
                return oVar2;
            }
            i(bVar);
        }
        return null;
    }

    @Nullable
    protected final o e() {
        return this.availableOutputBuffers.pollFirst();
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void flush() {
        this.queuedInputBufferCount = 0L;
        this.playbackPositionUs = 0L;
        while (!this.queuedInputBuffers.isEmpty()) {
            i((b) o0.j(this.queuedInputBuffers.poll()));
        }
        b bVar = this.dequeuedInputBuffer;
        if (bVar != null) {
            i(bVar);
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(n nVar) throws k {
        com.google.android.exoplayer2.util.a.a(nVar == this.dequeuedInputBuffer);
        b bVar = (b) nVar;
        if (bVar.f()) {
            i(bVar);
        } else {
            long j6 = this.queuedInputBufferCount;
            this.queuedInputBufferCount = 1 + j6;
            bVar.queuedInputBufferCount = j6;
            this.queuedInputBuffers.add(bVar);
        }
        this.dequeuedInputBuffer = null;
    }

    public e() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.availableInputBuffers.add(new b());
        }
        this.availableOutputBuffers = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            this.availableOutputBuffers.add(new c(new h.a() { // from class: com.google.android.exoplayer2.text.cea.d
                @Override // com.google.android.exoplayer2.decoder.h.a
                public final void a(h hVar) {
                    this.f1299a.j((e.c) hVar);
                }
            }));
        }
        this.queuedInputBuffers = new PriorityQueue<>();
    }

    private void i(b bVar) {
        bVar.b();
        this.availableInputBuffers.add(bVar);
    }

    protected void j(o oVar) {
        oVar.b();
        this.availableOutputBuffers.add(oVar);
    }
}
