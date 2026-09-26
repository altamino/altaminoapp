package androidx.media3.exoplayer.text;

import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.text.CueDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.collect.a0;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class ExoplayerCuesDecoder implements SubtitleDecoder {
    private static final int INPUT_BUFFER_AVAILABLE = 0;
    private static final int INPUT_BUFFER_DEQUEUED = 1;
    private static final int INPUT_BUFFER_QUEUED = 2;
    private static final int OUTPUT_BUFFERS_COUNT = 2;
    private int inputBufferState;
    private boolean released;
    private final CueDecoder cueDecoder = new CueDecoder();
    private final SubtitleInputBuffer inputBuffer = new SubtitleInputBuffer();
    private final Deque<SubtitleOutputBuffer> availableOutputBuffers = new ArrayDeque();

    private static final class SingleEventSubtitle implements Subtitle {
        private final a0<Cue> cues;
        private final long timeUs;

        @Override // androidx.media3.extractor.text.Subtitle
        public int getEventTimeCount() {
            return 1;
        }

        @Override // androidx.media3.extractor.text.Subtitle
        public int getNextEventTimeIndex(long j6) {
            return this.timeUs > j6 ? 0 : -1;
        }

        @Override // androidx.media3.extractor.text.Subtitle
        public List<Cue> getCues(long j6) {
            return j6 >= this.timeUs ? this.cues : a0.x();
        }

        @Override // androidx.media3.extractor.text.Subtitle
        public long getEventTime(int i10) {
            Assertions.a(i10 == 0);
            return this.timeUs;
        }

        public SingleEventSubtitle(long j6, a0<Cue> a0Var) {
            this.timeUs = j6;
            this.cues = a0Var;
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public String getName() {
        return "ExoplayerCuesDecoder";
    }

    @Override // androidx.media3.decoder.Decoder
    public void release() {
        this.released = true;
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public void setPositionUs(long j6) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(SubtitleOutputBuffer subtitleOutputBuffer) {
        Assertions.g(this.availableOutputBuffers.size() < 2);
        Assertions.a(!this.availableOutputBuffers.contains(subtitleOutputBuffer));
        subtitleOutputBuffer.b();
        this.availableOutputBuffers.addFirst(subtitleOutputBuffer);
    }

    @Override // androidx.media3.decoder.Decoder
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.g(!this.released);
        if (this.inputBufferState != 0) {
            return null;
        }
        this.inputBufferState = 1;
        return this.inputBuffer;
    }

    @Override // androidx.media3.decoder.Decoder
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        Assertions.g(!this.released);
        if (this.inputBufferState != 2 || this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        SubtitleOutputBuffer subtitleOutputBufferRemoveFirst = this.availableOutputBuffers.removeFirst();
        if (this.inputBuffer.h()) {
            subtitleOutputBufferRemoveFirst.a(4);
        } else {
            SubtitleInputBuffer subtitleInputBuffer = this.inputBuffer;
            subtitleOutputBufferRemoveFirst.o(this.inputBuffer.timeUs, new SingleEventSubtitle(subtitleInputBuffer.timeUs, this.cueDecoder.a(((ByteBuffer) Assertions.e(subtitleInputBuffer.data)).array())), 0L);
        }
        this.inputBuffer.b();
        this.inputBufferState = 0;
        return subtitleOutputBufferRemoveFirst;
    }

    @Override // androidx.media3.decoder.Decoder
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.g(!this.released);
        Assertions.g(this.inputBufferState == 1);
        Assertions.a(this.inputBuffer == subtitleInputBuffer);
        this.inputBufferState = 2;
    }

    @Override // androidx.media3.decoder.Decoder
    public void flush() {
        Assertions.g(!this.released);
        this.inputBuffer.b();
        this.inputBufferState = 0;
    }

    public ExoplayerCuesDecoder() {
        for (int i10 = 0; i10 < 2; i10++) {
            this.availableOutputBuffers.addFirst(new SubtitleOutputBuffer() { // from class: androidx.media3.exoplayer.text.ExoplayerCuesDecoder.1
                @Override // androidx.media3.decoder.DecoderOutputBuffer
                public void n() {
                    ExoplayerCuesDecoder.this.e(this);
                }
            });
        }
        this.inputBufferState = 0;
    }
}
