package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class g extends MediaCodec.Callback {
    private final HandlerThread callbackThread;

    @Nullable
    @GuardedBy
    private MediaFormat currentFormat;
    private Handler handler;

    @Nullable
    @GuardedBy
    private IllegalStateException internalException;

    @Nullable
    @GuardedBy
    private MediaCodec.CodecException mediaCodecException;

    @GuardedBy
    private long pendingFlushCount;

    @Nullable
    @GuardedBy
    private MediaFormat pendingOutputFormat;

    @GuardedBy
    private boolean shutDown;
    private final Object lock = new Object();

    @GuardedBy
    private final k availableInputBuffers = new k();

    @GuardedBy
    private final k availableOutputBuffers = new k();

    @GuardedBy
    private final ArrayDeque<MediaCodec.BufferInfo> bufferInfos = new ArrayDeque<>();

    @GuardedBy
    private final ArrayDeque<MediaFormat> formats = new ArrayDeque<>();

    @GuardedBy
    private boolean i() {
        return this.pendingFlushCount > 0 || this.shutDown;
    }

    @GuardedBy
    private void b(MediaFormat mediaFormat) {
        this.availableOutputBuffers.a(-2);
        this.formats.add(mediaFormat);
    }

    @GuardedBy
    private void f() {
        if (!this.formats.isEmpty()) {
            this.pendingOutputFormat = this.formats.getLast();
        }
        this.availableInputBuffers.b();
        this.availableOutputBuffers.b();
        this.bufferInfos.clear();
        this.formats.clear();
        this.mediaCodecException = null;
    }

    @GuardedBy
    private void k() {
        IllegalStateException illegalStateException = this.internalException;
        if (illegalStateException == null) {
            return;
        }
        this.internalException = null;
        throw illegalStateException;
    }

    @GuardedBy
    private void l() {
        MediaCodec.CodecException codecException = this.mediaCodecException;
        if (codecException == null) {
            return;
        }
        this.mediaCodecException = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        synchronized (this.lock) {
            try {
                if (this.shutDown) {
                    return;
                }
                long j6 = this.pendingFlushCount - 1;
                this.pendingFlushCount = j6;
                if (j6 > 0) {
                    return;
                }
                if (j6 < 0) {
                    n(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.lock) {
            this.internalException = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.lock) {
            try {
                int iE = -1;
                if (i()) {
                    return -1;
                }
                j();
                if (!this.availableInputBuffers.d()) {
                    iE = this.availableInputBuffers.e();
                }
                return iE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.lock) {
            try {
                if (i()) {
                    return -1;
                }
                j();
                if (this.availableOutputBuffers.d()) {
                    return -1;
                }
                int iE = this.availableOutputBuffers.e();
                if (iE >= 0) {
                    com.google.android.exoplayer2.util.a.i(this.currentFormat);
                    MediaCodec.BufferInfo bufferInfoRemove = this.bufferInfos.remove();
                    bufferInfo.set(bufferInfoRemove.offset, bufferInfoRemove.size, bufferInfoRemove.presentationTimeUs, bufferInfoRemove.flags);
                } else if (iE == -2) {
                    this.currentFormat = this.formats.remove();
                }
                return iE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void e() {
        synchronized (this.lock) {
            this.pendingFlushCount++;
            ((Handler) o0.j(this.handler)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1240a.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.lock) {
            try {
                mediaFormat = this.currentFormat;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        com.google.android.exoplayer2.util.a.g(this.handler == null);
        this.callbackThread.start();
        Handler handler = new Handler(this.callbackThread.getLooper());
        mediaCodec.setCallback(this, handler);
        this.handler = handler;
    }

    public void o() {
        synchronized (this.lock) {
            this.shutDown = true;
            this.callbackThread.quit();
            f();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.lock) {
            this.mediaCodecException = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        synchronized (this.lock) {
            this.availableInputBuffers.a(i10);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.lock) {
            try {
                MediaFormat mediaFormat = this.pendingOutputFormat;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.pendingOutputFormat = null;
                }
                this.availableOutputBuffers.a(i10);
                this.bufferInfos.add(bufferInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.lock) {
            b(mediaFormat);
            this.pendingOutputFormat = null;
        }
    }

    g(HandlerThread handlerThread) {
        this.callbackThread = handlerThread;
    }

    @GuardedBy
    private void j() {
        k();
        l();
    }
}
