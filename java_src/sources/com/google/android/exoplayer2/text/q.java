package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.x;
import com.google.common.collect.a0;

/* JADX INFO: loaded from: classes7.dex */
public final class q extends com.google.android.exoplayer2.f implements Handler.Callback {
    private static final int MSG_UPDATE_OUTPUT = 0;
    private static final int REPLACEMENT_STATE_NONE = 0;
    private static final int REPLACEMENT_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REPLACEMENT_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "TextRenderer";

    @Nullable
    private j decoder;
    private final l decoderFactory;
    private int decoderReplacementState;
    private long finalStreamEndPositionUs;
    private final b2 formatHolder;
    private boolean inputStreamEnded;
    private long lastRendererPositionUs;

    @Nullable
    private n nextInputBuffer;

    @Nullable
    private o nextSubtitle;
    private int nextSubtitleEventIndex;
    private final p output;

    @Nullable
    private final Handler outputHandler;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;

    @Nullable
    private a2 streamFormat;

    @Nullable
    private o subtitle;
    private boolean waitingForKeyFrame;

    public q(p pVar, @Nullable Looper looper) {
        this(pVar, looper, l.DEFAULT);
    }

    private void E() {
        this.waitingForKeyFrame = true;
        this.decoder = this.decoderFactory.b((a2) com.google.android.exoplayer2.util.a.e(this.streamFormat));
    }

    private void G() {
        this.nextInputBuffer = null;
        this.nextSubtitleEventIndex = -1;
        o oVar = this.subtitle;
        if (oVar != null) {
            oVar.l();
            this.subtitle = null;
        }
        o oVar2 = this.nextSubtitle;
        if (oVar2 != null) {
            oVar2.l();
            this.nextSubtitle = null;
        }
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.f
    protected void p() {
        this.streamFormat = null;
        this.finalStreamEndPositionUs = -9223372036854775807L;
        z();
        this.outputStreamOffsetUs = -9223372036854775807L;
        this.lastRendererPositionUs = -9223372036854775807L;
        H();
    }

    public q(p pVar, @Nullable Looper looper, l lVar) {
        super(3);
        this.output = (p) com.google.android.exoplayer2.util.a.e(pVar);
        this.outputHandler = looper == null ? null : o0.t(looper, this);
        this.decoderFactory = lVar;
        this.formatHolder = new b2();
        this.finalStreamEndPositionUs = -9223372036854775807L;
        this.outputStreamOffsetUs = -9223372036854775807L;
        this.lastRendererPositionUs = -9223372036854775807L;
    }

    private long A(long j6) {
        int nextEventTimeIndex = this.subtitle.getNextEventTimeIndex(j6);
        if (nextEventTimeIndex == 0) {
            return this.subtitle.timeUs;
        }
        if (nextEventTimeIndex != -1) {
            return this.subtitle.getEventTime(nextEventTimeIndex - 1);
        }
        o oVar = this.subtitle;
        return oVar.getEventTime(oVar.getEventTimeCount() - 1);
    }

    private long B() {
        if (this.nextSubtitleEventIndex == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.a.e(this.subtitle);
        if (this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void D(k kVar) {
        t.d(TAG, "Subtitle decoding failed. streamFormat=" + this.streamFormat, kVar);
        z();
        I();
    }

    private void F(f fVar) {
        this.output.onCues(fVar.cues);
        this.output.x(fVar);
    }

    private void K(f fVar) {
        Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, fVar).sendToTarget();
        } else {
            F(fVar);
        }
    }

    private void z() {
        K(new f(a0.x(), C(this.lastRendererPositionUs)));
    }

    @Override // com.google.android.exoplayer2.o3
    public int a(a2 a2Var) {
        if (this.decoderFactory.a(a2Var)) {
            return n3.a(a2Var.cryptoType == 0 ? 4 : 2);
        }
        return x.n(a2Var.sampleMimeType) ? n3.a(1) : n3.a(0);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            throw new IllegalStateException();
        }
        F((f) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) {
        this.lastRendererPositionUs = j6;
        z();
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.finalStreamEndPositionUs = -9223372036854775807L;
        if (this.decoderReplacementState != 0) {
            I();
        } else {
            G();
            ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).flush();
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ab  */
    @Override // com.google.android.exoplayer2.m3
    public void render(long j6, long j10) throws com.google.android.exoplayer2.decoder.f {
        boolean z6;
        this.lastRendererPositionUs = j6;
        if (isCurrentStreamFinal()) {
            long j11 = this.finalStreamEndPositionUs;
            if (j11 != -9223372036854775807L && j6 >= j11) {
                G();
                this.outputStreamEnded = true;
            }
        }
        if (this.outputStreamEnded) {
            return;
        }
        if (this.nextSubtitle == null) {
            ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).setPositionUs(j6);
            try {
                this.nextSubtitle = ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).dequeueOutputBuffer();
            } catch (k e) {
                D(e);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.subtitle != null) {
            long jB = B();
            z6 = false;
            while (jB <= j6) {
                this.nextSubtitleEventIndex++;
                jB = B();
                z6 = true;
            }
        } else {
            z6 = false;
        }
        o oVar = this.nextSubtitle;
        if (oVar != null) {
            if (!oVar.h()) {
                if (oVar.timeUs <= j6) {
                    o oVar2 = this.subtitle;
                    if (oVar2 != null) {
                        oVar2.l();
                    }
                    this.nextSubtitleEventIndex = oVar.getNextEventTimeIndex(j6);
                    this.subtitle = oVar;
                    this.nextSubtitle = null;
                }
                com.google.android.exoplayer2.util.a.e(this.subtitle);
                K(new f(this.subtitle.getCues(j6), C(A(j6))));
            } else if (!z6 && B() == Long.MAX_VALUE) {
                if (this.decoderReplacementState == 2) {
                    I();
                } else {
                    G();
                    this.outputStreamEnded = true;
                }
            }
            if (z6) {
                com.google.android.exoplayer2.util.a.e(this.subtitle);
                K(new f(this.subtitle.getCues(j6), C(A(j6))));
            }
        } else if (z6) {
            com.google.android.exoplayer2.util.a.e(this.subtitle);
            K(new f(this.subtitle.getCues(j6), C(A(j6))));
        }
        if (this.decoderReplacementState == 2) {
            return;
        }
        while (!this.inputStreamEnded) {
            try {
                n nVarDequeueInputBuffer = this.nextInputBuffer;
                if (nVarDequeueInputBuffer == null) {
                    nVarDequeueInputBuffer = ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).dequeueInputBuffer();
                    if (nVarDequeueInputBuffer == null) {
                        return;
                    } else {
                        this.nextInputBuffer = nVarDequeueInputBuffer;
                    }
                }
                if (this.decoderReplacementState == 1) {
                    nVarDequeueInputBuffer.k(4);
                    ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).queueInputBuffer(nVarDequeueInputBuffer);
                    this.nextInputBuffer = null;
                    this.decoderReplacementState = 2;
                    return;
                }
                int iW = w(this.formatHolder, nVarDequeueInputBuffer, 0);
                if (iW == -4) {
                    if (nVarDequeueInputBuffer.h()) {
                        this.inputStreamEnded = true;
                        this.waitingForKeyFrame = false;
                    } else {
                        a2 a2Var = this.formatHolder.format;
                        if (a2Var == null) {
                            return;
                        }
                        nVarDequeueInputBuffer.subsampleOffsetUs = a2Var.subsampleOffsetUs;
                        nVarDequeueInputBuffer.o();
                        this.waitingForKeyFrame &= !nVarDequeueInputBuffer.j();
                    }
                    if (!this.waitingForKeyFrame) {
                        ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).queueInputBuffer(nVarDequeueInputBuffer);
                        this.nextInputBuffer = null;
                    }
                } else if (iW == -3) {
                    return;
                }
            } catch (k e2) {
                D(e2);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void v(a2[] a2VarArr, long j6, long j10) {
        this.outputStreamOffsetUs = j10;
        this.streamFormat = a2VarArr[0];
        if (this.decoder != null) {
            this.decoderReplacementState = 1;
        } else {
            E();
        }
    }

    private void H() {
        G();
        ((j) com.google.android.exoplayer2.util.a.e(this.decoder)).release();
        this.decoder = null;
        this.decoderReplacementState = 0;
    }

    private void I() {
        H();
        E();
    }

    public void J(long j6) {
        com.google.android.exoplayer2.util.a.g(isCurrentStreamFinal());
        this.finalStreamEndPositionUs = j6;
    }

    private long C(long j6) {
        boolean z6;
        boolean z10 = false;
        if (j6 != -9223372036854775807L) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        if (this.outputStreamOffsetUs != -9223372036854775807L) {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.g(z10);
        return j6 - this.outputStreamOffsetUs;
    }
}
