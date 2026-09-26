package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes11.dex */
public final class m0 implements g {
    private static final float CLOSE_THRESHOLD = 1.0E-4f;
    private static final int MIN_BYTES_FOR_DURATION_SCALING_CALCULATION = 1024;
    public static final int SAMPLE_RATE_NO_CHANGE = -1;
    private ByteBuffer buffer;
    private g.a inputAudioFormat;
    private long inputBytes;
    private boolean inputEnded;
    private g.a outputAudioFormat;
    private ByteBuffer outputBuffer;
    private long outputBytes;
    private g.a pendingInputAudioFormat;
    private g.a pendingOutputAudioFormat;
    private int pendingOutputSampleRate;
    private boolean pendingSonicRecreation;
    private ShortBuffer shortBuffer;

    @Nullable
    private l0 sonic;
    private float speed = 1.0f;
    private float pitch = 1.0f;

    public long b(long j6) {
        if (this.outputBytes < 1024) {
            return (long) (((double) this.speed) * j6);
        }
        long jL = this.inputBytes - ((long) ((l0) com.google.android.exoplayer2.util.a.e(this.sonic)).l());
        int i10 = this.outputAudioFormat.sampleRate;
        int i11 = this.inputAudioFormat.sampleRate;
        return i10 == i11 ? com.google.android.exoplayer2.util.o0.F0(j6, jL, this.outputBytes) : com.google.android.exoplayer2.util.o0.F0(j6, jL * ((long) i10), this.outputBytes * ((long) i11));
    }

    public void c(float f) {
        if (this.pitch != f) {
            this.pitch = f;
            this.pendingSonicRecreation = true;
        }
    }

    public void d(float f) {
        if (this.speed != f) {
            this.speed = f;
            this.pendingSonicRecreation = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.g
    public g.a a(g.a aVar) throws g.b {
        if (aVar.encoding != 2) {
            throw new g.b(aVar);
        }
        int i10 = this.pendingOutputSampleRate;
        if (i10 == -1) {
            i10 = aVar.sampleRate;
        }
        this.pendingInputAudioFormat = aVar;
        g.a aVar2 = new g.a(i10, aVar.channelCount, 2);
        this.pendingOutputAudioFormat = aVar2;
        this.pendingSonicRecreation = true;
        return aVar2;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public ByteBuffer getOutput() {
        int iK;
        l0 l0Var = this.sonic;
        if (l0Var != null && (iK = l0Var.k()) > 0) {
            if (this.buffer.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.buffer = byteBufferOrder;
                this.shortBuffer = byteBufferOrder.asShortBuffer();
            } else {
                this.buffer.clear();
                this.shortBuffer.clear();
            }
            l0Var.j(this.shortBuffer);
            this.outputBytes += (long) iK;
            this.buffer.limit(iK);
            this.outputBuffer = this.buffer;
        }
        ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = g.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public boolean isActive() {
        return this.pendingOutputAudioFormat.sampleRate != -1 && (Math.abs(this.speed - 1.0f) >= 1.0E-4f || Math.abs(this.pitch - 1.0f) >= 1.0E-4f || this.pendingOutputAudioFormat.sampleRate != this.pendingInputAudioFormat.sampleRate);
    }

    @Override // com.google.android.exoplayer2.audio.g
    public boolean isEnded() {
        l0 l0Var;
        return this.inputEnded && ((l0Var = this.sonic) == null || l0Var.k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void queueEndOfStream() {
        l0 l0Var = this.sonic;
        if (l0Var != null) {
            l0Var.s();
        }
        this.inputEnded = true;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void reset() {
        this.speed = 1.0f;
        this.pitch = 1.0f;
        g.a aVar = g.a.NOT_SET;
        this.pendingInputAudioFormat = aVar;
        this.pendingOutputAudioFormat = aVar;
        this.inputAudioFormat = aVar;
        this.outputAudioFormat = aVar;
        ByteBuffer byteBuffer = g.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.shortBuffer = byteBuffer.asShortBuffer();
        this.outputBuffer = byteBuffer;
        this.pendingOutputSampleRate = -1;
        this.pendingSonicRecreation = false;
        this.sonic = null;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    public m0() {
        g.a aVar = g.a.NOT_SET;
        this.pendingInputAudioFormat = aVar;
        this.pendingOutputAudioFormat = aVar;
        this.inputAudioFormat = aVar;
        this.outputAudioFormat = aVar;
        ByteBuffer byteBuffer = g.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.shortBuffer = byteBuffer.asShortBuffer();
        this.outputBuffer = byteBuffer;
        this.pendingOutputSampleRate = -1;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void flush() {
        if (isActive()) {
            g.a aVar = this.pendingInputAudioFormat;
            this.inputAudioFormat = aVar;
            g.a aVar2 = this.pendingOutputAudioFormat;
            this.outputAudioFormat = aVar2;
            if (this.pendingSonicRecreation) {
                this.sonic = new l0(aVar.sampleRate, aVar.channelCount, this.speed, this.pitch, aVar2.sampleRate);
            } else {
                l0 l0Var = this.sonic;
                if (l0Var != null) {
                    l0Var.i();
                }
            }
        }
        this.outputBuffer = g.EMPTY_BUFFER;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void queueInput(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        l0 l0Var = (l0) com.google.android.exoplayer2.util.a.e(this.sonic);
        ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
        int iRemaining = byteBuffer.remaining();
        this.inputBytes += (long) iRemaining;
        l0Var.t(shortBufferAsShortBuffer);
        byteBuffer.position(byteBuffer.position() + iRemaining);
    }
}
