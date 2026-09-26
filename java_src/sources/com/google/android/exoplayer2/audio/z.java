package com.google.android.exoplayer2.audio;

import androidx.annotation.CallSuper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes11.dex */
public abstract class z implements g {
    private ByteBuffer buffer;
    protected g.a inputAudioFormat;
    private boolean inputEnded;
    protected g.a outputAudioFormat;
    private ByteBuffer outputBuffer;
    private g.a pendingInputAudioFormat;
    private g.a pendingOutputAudioFormat;

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }

    @Override // com.google.android.exoplayer2.audio.g
    @CallSuper
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = g.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.g
    @CallSuper
    public boolean isEnded() {
        return this.inputEnded && this.outputBuffer == g.EMPTY_BUFFER;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public final void queueEndOfStream() {
        this.inputEnded = true;
        e();
    }

    @Override // com.google.android.exoplayer2.audio.g
    public final g.a a(g.a aVar) throws g.b {
        this.pendingInputAudioFormat = aVar;
        this.pendingOutputAudioFormat = c(aVar);
        return isActive() ? this.pendingOutputAudioFormat : g.a.NOT_SET;
    }

    protected final boolean b() {
        return this.outputBuffer.hasRemaining();
    }

    protected g.a c(g.a aVar) throws g.b {
        return g.a.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public final void flush() {
        this.outputBuffer = g.EMPTY_BUFFER;
        this.inputEnded = false;
        this.inputAudioFormat = this.pendingInputAudioFormat;
        this.outputAudioFormat = this.pendingOutputAudioFormat;
        d();
    }

    protected final ByteBuffer g(int i10) {
        if (this.buffer.capacity() < i10) {
            this.buffer = ByteBuffer.allocateDirect(i10).order(ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        ByteBuffer byteBuffer = this.buffer;
        this.outputBuffer = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public boolean isActive() {
        return this.pendingOutputAudioFormat != g.a.NOT_SET;
    }

    public z() {
        ByteBuffer byteBuffer = g.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
        g.a aVar = g.a.NOT_SET;
        this.pendingInputAudioFormat = aVar;
        this.pendingOutputAudioFormat = aVar;
        this.inputAudioFormat = aVar;
        this.outputAudioFormat = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public final void reset() {
        flush();
        this.buffer = g.EMPTY_BUFFER;
        g.a aVar = g.a.NOT_SET;
        this.pendingInputAudioFormat = aVar;
        this.pendingOutputAudioFormat = aVar;
        this.inputAudioFormat = aVar;
        this.outputAudioFormat = aVar;
        f();
    }
}
