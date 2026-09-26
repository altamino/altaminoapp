package androidx.media3.extractor.text.cea;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderOutputBuffer;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes7.dex */
abstract class CeaDecoder implements SubtitleDecoder {
    private static final int NUM_INPUT_BUFFERS = 10;
    private static final int NUM_OUTPUT_BUFFERS = 2;
    private final ArrayDeque<CeaInputBuffer> availableInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<SubtitleOutputBuffer> availableOutputBuffers;

    @Nullable
    private CeaInputBuffer dequeuedInputBuffer;
    private long playbackPositionUs;
    private long queuedInputBufferCount;
    private final PriorityQueue<CeaInputBuffer> queuedInputBuffers;

    private static final class CeaInputBuffer extends SubtitleInputBuffer implements Comparable<CeaInputBuffer> {
        private long queuedInputBufferCount;

        private CeaInputBuffer() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public int compareTo(CeaInputBuffer ceaInputBuffer) {
            if (h() != ceaInputBuffer.h()) {
                if (!h()) {
                    return -1;
                }
                return 1;
            }
            long j6 = this.timeUs - ceaInputBuffer.timeUs;
            if (j6 == 0) {
                j6 = this.queuedInputBufferCount - ceaInputBuffer.queuedInputBufferCount;
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
    static final class CeaOutputBuffer extends SubtitleOutputBuffer {
        private DecoderOutputBuffer.Owner<CeaOutputBuffer> owner;

        @Override // androidx.media3.decoder.DecoderOutputBuffer
        public final void n() {
            this.owner.a(this);
        }

        public CeaOutputBuffer(DecoderOutputBuffer.Owner<CeaOutputBuffer> owner) {
            this.owner = owner;
        }
    }

    protected abstract Subtitle a();

    protected abstract void b(SubtitleInputBuffer subtitleInputBuffer);

    protected final long f() {
        return this.playbackPositionUs;
    }

    protected abstract boolean g();

    @Override // androidx.media3.decoder.Decoder
    public void release() {
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public void setPositionUs(long j6) {
        this.playbackPositionUs = j6;
    }

    @Override // androidx.media3.decoder.Decoder
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.g(this.dequeuedInputBuffer == null);
        if (this.availableInputBuffers.isEmpty()) {
            return null;
        }
        CeaInputBuffer ceaInputBufferPollFirst = this.availableInputBuffers.pollFirst();
        this.dequeuedInputBuffer = ceaInputBufferPollFirst;
        return ceaInputBufferPollFirst;
    }

    @Override // androidx.media3.decoder.Decoder
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        while (!this.queuedInputBuffers.isEmpty() && ((CeaInputBuffer) Util.j(this.queuedInputBuffers.peek())).timeUs <= this.playbackPositionUs) {
            CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) Util.j(this.queuedInputBuffers.poll());
            if (ceaInputBuffer.h()) {
                SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) Util.j(this.availableOutputBuffers.pollFirst());
                subtitleOutputBuffer.a(4);
                i(ceaInputBuffer);
                return subtitleOutputBuffer;
            }
            b(ceaInputBuffer);
            if (g()) {
                Subtitle subtitleA = a();
                SubtitleOutputBuffer subtitleOutputBuffer2 = (SubtitleOutputBuffer) Util.j(this.availableOutputBuffers.pollFirst());
                subtitleOutputBuffer2.o(ceaInputBuffer.timeUs, subtitleA, Long.MAX_VALUE);
                i(ceaInputBuffer);
                return subtitleOutputBuffer2;
            }
            i(ceaInputBuffer);
        }
        return null;
    }

    @Nullable
    protected final SubtitleOutputBuffer e() {
        return this.availableOutputBuffers.pollFirst();
    }

    @Override // androidx.media3.decoder.Decoder
    public void flush() {
        this.queuedInputBufferCount = 0L;
        this.playbackPositionUs = 0L;
        while (!this.queuedInputBuffers.isEmpty()) {
            i((CeaInputBuffer) Util.j(this.queuedInputBuffers.poll()));
        }
        CeaInputBuffer ceaInputBuffer = this.dequeuedInputBuffer;
        if (ceaInputBuffer != null) {
            i(ceaInputBuffer);
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // androidx.media3.decoder.Decoder
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.a(subtitleInputBuffer == this.dequeuedInputBuffer);
        CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) subtitleInputBuffer;
        if (ceaInputBuffer.f()) {
            i(ceaInputBuffer);
        } else {
            long j6 = this.queuedInputBufferCount;
            this.queuedInputBufferCount = 1 + j6;
            ceaInputBuffer.queuedInputBufferCount = j6;
            this.queuedInputBuffers.add(ceaInputBuffer);
        }
        this.dequeuedInputBuffer = null;
    }

    public CeaDecoder() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.availableInputBuffers.add(new CeaInputBuffer());
        }
        this.availableOutputBuffers = new ArrayDeque<>();
        for (int i11 = 0; i11 < 2; i11++) {
            this.availableOutputBuffers.add(new CeaOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: androidx.media3.extractor.text.cea.b
                @Override // androidx.media3.decoder.DecoderOutputBuffer.Owner
                public final void a(DecoderOutputBuffer decoderOutputBuffer) {
                    this.f717a.j((CeaDecoder.CeaOutputBuffer) decoderOutputBuffer);
                }
            }));
        }
        this.queuedInputBuffers = new PriorityQueue<>();
    }

    private void i(CeaInputBuffer ceaInputBuffer) {
        ceaInputBuffer.b();
        this.availableInputBuffers.add(ceaInputBuffer);
    }

    protected void j(SubtitleOutputBuffer subtitleOutputBuffer) {
        subtitleOutputBuffer.b();
        this.availableOutputBuffers.add(subtitleOutputBuffer);
    }
}
