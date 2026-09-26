package androidx.media3.exoplayer.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderException;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.h2;
import androidx.media3.extractor.text.SubtitleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import com.google.common.collect.a0;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class TextRenderer extends BaseRenderer implements Handler.Callback {
    private static final int MSG_UPDATE_OUTPUT = 0;
    private static final int REPLACEMENT_STATE_NONE = 0;
    private static final int REPLACEMENT_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REPLACEMENT_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "TextRenderer";

    @Nullable
    private SubtitleDecoder decoder;
    private final SubtitleDecoderFactory decoderFactory;
    private int decoderReplacementState;
    private long finalStreamEndPositionUs;
    private final FormatHolder formatHolder;
    private boolean inputStreamEnded;
    private long lastRendererPositionUs;

    @Nullable
    private SubtitleInputBuffer nextInputBuffer;

    @Nullable
    private SubtitleOutputBuffer nextSubtitle;
    private int nextSubtitleEventIndex;
    private final TextOutput output;

    @Nullable
    private final Handler outputHandler;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;

    @Nullable
    private Format streamFormat;

    @Nullable
    private SubtitleOutputBuffer subtitle;
    private boolean waitingForKeyFrame;

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper) {
        this(textOutput, looper, SubtitleDecoderFactory.DEFAULT);
    }

    private void I() {
        this.waitingForKeyFrame = true;
        this.decoder = this.decoderFactory.b((Format) Assertions.e(this.streamFormat));
    }

    private void K() {
        this.nextInputBuffer = null;
        this.nextSubtitleEventIndex = -1;
        SubtitleOutputBuffer subtitleOutputBuffer = this.subtitle;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.n();
            this.subtitle = null;
        }
        SubtitleOutputBuffer subtitleOutputBuffer2 = this.nextSubtitle;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.n();
            this.nextSubtitle = null;
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.streamFormat = null;
        this.finalStreamEndPositionUs = -9223372036854775807L;
        D();
        this.outputStreamOffsetUs = -9223372036854775807L;
        this.lastRendererPositionUs = -9223372036854775807L;
        L();
    }

    public TextRenderer(TextOutput textOutput, @Nullable Looper looper, SubtitleDecoderFactory subtitleDecoderFactory) {
        super(3);
        this.output = (TextOutput) Assertions.e(textOutput);
        this.outputHandler = looper == null ? null : Util.v(looper, this);
        this.decoderFactory = subtitleDecoderFactory;
        this.formatHolder = new FormatHolder();
        this.finalStreamEndPositionUs = -9223372036854775807L;
        this.outputStreamOffsetUs = -9223372036854775807L;
        this.lastRendererPositionUs = -9223372036854775807L;
    }

    private void D() {
        O(new CueGroup(a0.x(), G(this.lastRendererPositionUs)));
    }

    private long E(long j6) {
        int nextEventTimeIndex = this.subtitle.getNextEventTimeIndex(j6);
        if (nextEventTimeIndex == 0 || this.subtitle.getEventTimeCount() == 0) {
            return this.subtitle.timeUs;
        }
        if (nextEventTimeIndex != -1) {
            return this.subtitle.getEventTime(nextEventTimeIndex - 1);
        }
        SubtitleOutputBuffer subtitleOutputBuffer = this.subtitle;
        return subtitleOutputBuffer.getEventTime(subtitleOutputBuffer.getEventTimeCount() - 1);
    }

    private long F() {
        if (this.nextSubtitleEventIndex == -1) {
            return Long.MAX_VALUE;
        }
        Assertions.e(this.subtitle);
        if (this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void H(SubtitleDecoderException subtitleDecoderException) {
        Log.d(TAG, "Subtitle decoding failed. streamFormat=" + this.streamFormat, subtitleDecoderException);
        D();
        M();
    }

    private void J(CueGroup cueGroup) {
        this.output.onCues(cueGroup.cues);
        this.output.onCues(cueGroup);
    }

    private void O(CueGroup cueGroup) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, cueGroup).sendToTarget();
        } else {
            J(cueGroup);
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int a(Format format) {
        if (this.decoderFactory.a(format)) {
            return h2.c(format.cryptoType == 0 ? 4 : 2);
        }
        return MimeTypes.r(format.sampleMimeType) ? h2.c(1) : h2.c(0);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        J((CueGroup) message.obj);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ab  */
    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) throws DecoderException {
        boolean z6;
        this.lastRendererPositionUs = j6;
        if (isCurrentStreamFinal()) {
            long j11 = this.finalStreamEndPositionUs;
            if (j11 != -9223372036854775807L && j6 >= j11) {
                K();
                this.outputStreamEnded = true;
            }
        }
        if (this.outputStreamEnded) {
            return;
        }
        if (this.nextSubtitle == null) {
            ((SubtitleDecoder) Assertions.e(this.decoder)).setPositionUs(j6);
            try {
                this.nextSubtitle = ((SubtitleDecoder) Assertions.e(this.decoder)).dequeueOutputBuffer();
            } catch (SubtitleDecoderException e) {
                H(e);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.subtitle != null) {
            long jF = F();
            z6 = false;
            while (jF <= j6) {
                this.nextSubtitleEventIndex++;
                jF = F();
                z6 = true;
            }
        } else {
            z6 = false;
        }
        SubtitleOutputBuffer subtitleOutputBuffer = this.nextSubtitle;
        if (subtitleOutputBuffer != null) {
            if (!subtitleOutputBuffer.h()) {
                if (subtitleOutputBuffer.timeUs <= j6) {
                    SubtitleOutputBuffer subtitleOutputBuffer2 = this.subtitle;
                    if (subtitleOutputBuffer2 != null) {
                        subtitleOutputBuffer2.n();
                    }
                    this.nextSubtitleEventIndex = subtitleOutputBuffer.getNextEventTimeIndex(j6);
                    this.subtitle = subtitleOutputBuffer;
                    this.nextSubtitle = null;
                }
                Assertions.e(this.subtitle);
                O(new CueGroup(this.subtitle.getCues(j6), G(E(j6))));
            } else if (!z6 && F() == Long.MAX_VALUE) {
                if (this.decoderReplacementState == 2) {
                    M();
                } else {
                    K();
                    this.outputStreamEnded = true;
                }
            }
            if (z6) {
                Assertions.e(this.subtitle);
                O(new CueGroup(this.subtitle.getCues(j6), G(E(j6))));
            }
        } else if (z6) {
            Assertions.e(this.subtitle);
            O(new CueGroup(this.subtitle.getCues(j6), G(E(j6))));
        }
        if (this.decoderReplacementState == 2) {
            return;
        }
        while (!this.inputStreamEnded) {
            try {
                SubtitleInputBuffer subtitleInputBufferDequeueInputBuffer = this.nextInputBuffer;
                if (subtitleInputBufferDequeueInputBuffer == null) {
                    subtitleInputBufferDequeueInputBuffer = ((SubtitleDecoder) Assertions.e(this.decoder)).dequeueInputBuffer();
                    if (subtitleInputBufferDequeueInputBuffer == null) {
                        return;
                    } else {
                        this.nextInputBuffer = subtitleInputBufferDequeueInputBuffer;
                    }
                }
                if (this.decoderReplacementState == 1) {
                    subtitleInputBufferDequeueInputBuffer.l(4);
                    ((SubtitleDecoder) Assertions.e(this.decoder)).queueInputBuffer(subtitleInputBufferDequeueInputBuffer);
                    this.nextInputBuffer = null;
                    this.decoderReplacementState = 2;
                    return;
                }
                int iA = A(this.formatHolder, subtitleInputBufferDequeueInputBuffer, 0);
                if (iA == -4) {
                    if (subtitleInputBufferDequeueInputBuffer.h()) {
                        this.inputStreamEnded = true;
                        this.waitingForKeyFrame = false;
                    } else {
                        Format format = this.formatHolder.format;
                        if (format == null) {
                            return;
                        }
                        subtitleInputBufferDequeueInputBuffer.subsampleOffsetUs = format.subsampleOffsetUs;
                        subtitleInputBufferDequeueInputBuffer.p();
                        this.waitingForKeyFrame &= !subtitleInputBufferDequeueInputBuffer.j();
                    }
                    if (!this.waitingForKeyFrame) {
                        ((SubtitleDecoder) Assertions.e(this.decoder)).queueInputBuffer(subtitleInputBufferDequeueInputBuffer);
                        this.nextInputBuffer = null;
                    }
                } else if (iA == -3) {
                    return;
                }
            } catch (SubtitleDecoderException e2) {
                H(e2);
                return;
            }
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) {
        this.lastRendererPositionUs = j6;
        D();
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.finalStreamEndPositionUs = -9223372036854775807L;
        if (this.decoderReplacementState != 0) {
            M();
        } else {
            K();
            ((SubtitleDecoder) Assertions.e(this.decoder)).flush();
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void z(Format[] formatArr, long j6, long j10) {
        this.outputStreamOffsetUs = j10;
        this.streamFormat = formatArr[0];
        if (this.decoder != null) {
            this.decoderReplacementState = 1;
        } else {
            I();
        }
    }

    private void L() {
        K();
        ((SubtitleDecoder) Assertions.e(this.decoder)).release();
        this.decoder = null;
        this.decoderReplacementState = 0;
    }

    private void M() {
        L();
        I();
    }

    public void N(long j6) {
        Assertions.g(isCurrentStreamFinal());
        this.finalStreamEndPositionUs = j6;
    }

    private long G(long j6) {
        boolean z6;
        boolean z10 = false;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        if (this.outputStreamOffsetUs != -9223372036854775807L) {
            z10 = true;
        }
        Assertions.g(z10);
        return j6 - this.outputStreamOffsetUs;
    }
}
