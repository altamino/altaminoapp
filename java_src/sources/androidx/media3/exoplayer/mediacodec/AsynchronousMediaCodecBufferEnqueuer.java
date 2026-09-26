package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
class AsynchronousMediaCodecBufferEnqueuer {
    private static final int MSG_OPEN_CV = 2;
    private static final int MSG_QUEUE_INPUT_BUFFER = 0;
    private static final int MSG_QUEUE_SECURE_INPUT_BUFFER = 1;
    private final MediaCodec codec;
    private final ConditionVariable conditionVariable;
    private Handler handler;
    private final HandlerThread handlerThread;
    private final AtomicReference<RuntimeException> pendingRuntimeException;
    private boolean started;

    @GuardedBy
    private static final ArrayDeque<MessageParams> MESSAGE_PARAMS_INSTANCE_POOL = new ArrayDeque<>();
    private static final Object QUEUE_SECURE_LOCK = new Object();

    public AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new ConditionVariable());
    }

    private static class MessageParams {
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

        MessageParams() {
        }
    }

    @VisibleForTesting
    AsynchronousMediaCodecBufferEnqueuer(MediaCodec mediaCodec, HandlerThread handlerThread, ConditionVariable conditionVariable) {
        this.codec = mediaCodec;
        this.handlerThread = handlerThread;
        this.conditionVariable = conditionVariable;
        this.pendingRuntimeException = new AtomicReference<>();
    }

    private void b() throws InterruptedException {
        this.conditionVariable.d();
        ((Handler) Assertions.e(this.handler)).obtainMessage(2).sendToTarget();
        this.conditionVariable.a();
    }

    private static void c(CryptoInfo cryptoInfo, MediaCodec.CryptoInfo cryptoInfo2) {
        cryptoInfo2.numSubSamples = cryptoInfo.numSubSamples;
        cryptoInfo2.numBytesOfClearData = e(cryptoInfo.numBytesOfClearData, cryptoInfo2.numBytesOfClearData);
        cryptoInfo2.numBytesOfEncryptedData = e(cryptoInfo.numBytesOfEncryptedData, cryptoInfo2.numBytesOfEncryptedData);
        cryptoInfo2.key = (byte[]) Assertions.e(d(cryptoInfo.key, cryptoInfo2.key));
        cryptoInfo2.iv = (byte[]) Assertions.e(d(cryptoInfo.iv, cryptoInfo2.iv));
        cryptoInfo2.mode = cryptoInfo.mode;
        if (Util.SDK_INT >= 24) {
            d.a();
            cryptoInfo2.setPattern(androidx.media3.decoder.c.a(cryptoInfo.encryptedBlocks, cryptoInfo.clearBlocks));
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
        MessageParams messageParams;
        int i10 = message.what;
        if (i10 == 0) {
            messageParams = (MessageParams) message.obj;
            g(messageParams.index, messageParams.offset, messageParams.size, messageParams.presentationTimeUs, messageParams.flags);
        } else if (i10 != 1) {
            messageParams = null;
            if (i10 != 2) {
                androidx.compose.animation.core.d.a(this.pendingRuntimeException, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.conditionVariable.f();
            }
        } else {
            messageParams = (MessageParams) message.obj;
            h(messageParams.index, messageParams.offset, messageParams.cryptoInfo, messageParams.presentationTimeUs, messageParams.flags);
        }
        if (messageParams != null) {
            o(messageParams);
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
        ((Handler) Assertions.e(this.handler)).removeCallbacksAndMessages(null);
        b();
    }

    private static MessageParams k() {
        ArrayDeque<MessageParams> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new MessageParams();
                }
                return arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void o(MessageParams messageParams) {
        ArrayDeque<MessageParams> arrayDeque = MESSAGE_PARAMS_INSTANCE_POOL;
        synchronized (arrayDeque) {
            arrayDeque.add(messageParams);
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

    public void l() {
        RuntimeException andSet = this.pendingRuntimeException.getAndSet(null);
        if (andSet != null) {
            throw andSet;
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
        this.handler = new Handler(this.handlerThread.getLooper()) { // from class: androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecBufferEnqueuer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AsynchronousMediaCodecBufferEnqueuer.this.f(message);
            }
        };
        this.started = true;
    }

    public void m(int i10, int i11, int i12, long j6, int i13) {
        l();
        MessageParams messageParamsK = k();
        messageParamsK.a(i10, i11, i12, j6, i13);
        ((Handler) Util.j(this.handler)).obtainMessage(0, messageParamsK).sendToTarget();
    }

    public void n(int i10, int i11, CryptoInfo cryptoInfo, long j6, int i12) {
        l();
        MessageParams messageParamsK = k();
        messageParamsK.a(i10, i11, 0, j6, i12);
        c(cryptoInfo, messageParamsK.cryptoInfo);
        ((Handler) Util.j(this.handler)).obtainMessage(1, messageParamsK).sendToTarget();
    }

    public void r() throws InterruptedException {
        b();
    }
}
