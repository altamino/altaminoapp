package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
class e {
    private static final int MSG_OPEN_CV = 2;
    private static final int MSG_QUEUE_INPUT_BUFFER = 0;
    private static final int MSG_QUEUE_SECURE_INPUT_BUFFER = 1;
    private final MediaCodec codec;
    private final com.google.android.exoplayer2.util.g conditionVariable;
    private Handler handler;
    private final HandlerThread handlerThread;
    private final AtomicReference<RuntimeException> pendingRuntimeException;
    private boolean started;

    @GuardedBy
    private static final ArrayDeque<b> MESSAGE_PARAMS_INSTANCE_POOL = new ArrayDeque<>();
    private static final Object QUEUE_SECURE_LOCK = new Object();

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.f(message);
        }
    }

    public e(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new com.google.android.exoplayer2.util.g());
    }

    private static class b {
        public final MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        public int flags;
        public int index;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public void a(int i10, int i11, int i12, long j6, int i13) {
            this.index = i10;
            this.offset = i11;
            this.size = i12;
            this.presentationTimeUs = j6;
            this.flags = i13;
        }

        b() {
        }
    }

    @VisibleForTesting
    e(MediaCodec mediaCodec, HandlerThread handlerThread, com.google.android.exoplayer2.util.g gVar) {
        this.codec = mediaCodec;
        this.handlerThread = handlerThread;
        this.conditionVariable = gVar;
        this.pendingRuntimeException = new AtomicReference<>();
    }

    private void b() throws InterruptedException {
        this.conditionVariable.c();
        ((Handler) com.google.android.exoplayer2.util.a.e(this.handler)).obtainMessage(2).sendToTarget();
        this.conditionVariable.a();
    }

    private static void c(com.google.android.exoplayer2.decoder.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.numSubSamples;
        cryptoInfo.numBytesOfClearData = e(cVar.numBytesOfClearData, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.numBytesOfEncryptedData, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.key, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.iv, cryptoInfo.iv));
        cryptoInfo.mode = cVar.mode;
        if (o0.SDK_INT >= 24) {
            androidx.media3.exoplayer.mediacodec.d.a();
            cryptoInfo.setPattern(androidx.media3.decoder.c.a(cVar.encryptedBlocks, cVar.clearBlocks));
        }
    }

    @Nullable
    private static byte[] d(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    @Nullable
    private static int[] e(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        b bVar;
        int i10 = message.what;
        if (i10 == 0) {
            bVar = (b) message.obj;
            g(bVar.index, bVar.offset, bVar.size, bVar.presentationTimeUs, bVar.flags);
        } else if (i10 != 1) {
            bVar = null;
            if (i10 != 2) {
                androidx.compose.animation.core.d.a(this.pendingRuntimeException, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.conditionVariable.e();
            }
        } else {
            bVar = (b) message.obj;
            h(bVar.index, bVar.offset, bVar.cryptoInfo, bVar.presentationTimeUs, bVar.flags);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i10, int i11, int i12, long j6, int i13) {
        try {
            this.codec.queueInputBuffer(i10, i11, i12, j6, i13);
        } catch (RuntimeException e) {
            androidx.compose.animation.core.d.a(this.pendingRuntimeException, null, e);
        }
    }

    private void h(int i10, int i11, MediaCodec.CryptoInfo cryptoInfo, long j6, int i12) {
        try {
            synchronized (QUEUE_SECURE_LOCK) {
                this.codec.queueSecureInputBuffer(i10, i11, cryptoInfo, j6, i12);
            }
        } catch (RuntimeException e) {
            androidx.compose.animation.core.d.a(this.pendingRuntimeException, null, e);
        }
    }

    private void j() throws InterruptedException {
        ((Handler) com.google.android.exoplayer2.util.a.e(this.handler)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque<b> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new b();
                }
                return arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void l() {
        RuntimeException andSet = this.pendingRuntimeException.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    private static void o(b bVar) {
        ArrayDeque<b> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.started) {
            try {
                j();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    public void p() {
        if (this.started) {
            i();
            this.handlerThread.quit();
        }
        this.started = false;
    }

    public void q() {
        if (this.started) {
            return;
        }
        this.handlerThread.start();
        this.handler = new a(this.handlerThread.getLooper());
        this.started = true;
    }

    public void m(int i10, int i11, int i12, long j6, int i13) {
        l();
        b bVarK = k();
        bVarK.a(i10, i11, i12, j6, i13);
        ((Handler) o0.j(this.handler)).obtainMessage(0, bVarK).sendToTarget();
    }

    public void n(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j6, int i12) {
        l();
        b bVarK = k();
        bVarK.a(i10, i11, 0, j6, i12);
        c(cVar, bVarK.cryptoInfo);
        ((Handler) o0.j(this.handler)).obtainMessage(1, bVarK).sendToTarget();
    }

    public void r() throws InterruptedException {
        b();
    }
}
