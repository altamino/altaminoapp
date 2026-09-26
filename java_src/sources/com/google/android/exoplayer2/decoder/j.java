package com.google.android.exoplayer2.decoder;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.f;
import com.google.android.exoplayer2.decoder.g;
import com.google.android.exoplayer2.decoder.h;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes10.dex */
public abstract class j<I extends g, O extends h, E extends f> implements d<I, O, E> {
    private int availableInputBufferCount;
    private final I[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final O[] availableOutputBuffers;
    private final Thread decodeThread;

    @Nullable
    private I dequeuedInputBuffer;

    @Nullable
    private E exception;
    private boolean flushed;
    private final Object lock = new Object();
    private final ArrayDeque<I> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<O> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            j.this.p();
        }
    }

    protected abstract I c();

    protected abstract O d();

    protected abstract E e(Throwable th);

    @Nullable
    protected abstract E f(I i10, O o, boolean z6);

    private boolean b() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private boolean g() throws InterruptedException {
        E e;
        synchronized (this.lock) {
            while (!this.released && !b()) {
                try {
                    this.lock.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.released) {
                return false;
            }
            I iRemoveFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i10 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i10;
            O o = oArr[i10];
            boolean z6 = this.flushed;
            this.flushed = false;
            if (iRemoveFirst.h()) {
                o.a(4);
            } else {
                if (iRemoveFirst.f()) {
                    o.a(Integer.MIN_VALUE);
                }
                if (iRemoveFirst.i()) {
                    o.a(134217728);
                }
                try {
                    e = (E) f(iRemoveFirst, o, z6);
                } catch (OutOfMemoryError e2) {
                    e = (E) e(e2);
                } catch (RuntimeException e6) {
                    e = (E) e(e6);
                }
                if (e != null) {
                    synchronized (this.lock) {
                        this.exception = e;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                try {
                    if (this.flushed) {
                        o.l();
                    } else if (o.f()) {
                        this.skippedOutputBufferCount++;
                        o.l();
                    } else {
                        o.skippedOutputBufferCount = this.skippedOutputBufferCount;
                        this.skippedOutputBufferCount = 0;
                        this.queuedOutputBuffers.addLast(o);
                    }
                    m(iRemoveFirst);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends com.google.android.exoplayer2.decoder.f */
    private void k() throws f, E {
        E e = this.exception;
        if (e != null) {
            throw e;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public final void flush() {
        synchronized (this.lock) {
            try {
                this.flushed = true;
                this.skippedOutputBufferCount = 0;
                I i10 = this.dequeuedInputBuffer;
                if (i10 != null) {
                    m(i10);
                    this.dequeuedInputBuffer = null;
                }
                while (!this.queuedInputBuffers.isEmpty()) {
                    m(this.queuedInputBuffers.removeFirst());
                }
                while (!this.queuedOutputBuffers.isEmpty()) {
                    this.queuedOutputBuffers.removeFirst().l();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final I dequeueInputBuffer() throws f {
        I i10;
        synchronized (this.lock) {
            k();
            com.google.android.exoplayer2.util.a.g(this.dequeuedInputBuffer == null);
            int i11 = this.availableInputBufferCount;
            if (i11 == 0) {
                i10 = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i12 = i11 - 1;
                this.availableInputBufferCount = i12;
                i10 = iArr[i12];
            }
            this.dequeuedInputBuffer = i10;
        }
        return i10;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @Nullable
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final O dequeueOutputBuffer() throws f {
        synchronized (this.lock) {
            try {
                k();
                if (this.queuedOutputBuffers.isEmpty()) {
                    return null;
                }
                return this.queuedOutputBuffers.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final void queueInputBuffer(I i10) throws f {
        synchronized (this.lock) {
            k();
            com.google.android.exoplayer2.util.a.a(i10 == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i10);
            j();
            this.dequeuedInputBuffer = null;
        }
    }

    @CallSuper
    protected void n(O o) {
        synchronized (this.lock) {
            o(o);
            j();
        }
    }

    protected final void q(int i10) {
        com.google.android.exoplayer2.util.a.g(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i11 : this.availableInputBuffers) {
            i11.n(i10);
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    @CallSuper
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    protected j(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i10 = 0; i10 < this.availableInputBufferCount; i10++) {
            ((I[]) this.availableInputBuffers)[i10] = c();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i11 = 0; i11 < this.availableOutputBufferCount; i11++) {
            ((O[]) this.availableOutputBuffers)[i11] = d();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.decodeThread = aVar;
        aVar.start();
    }

    private void j() {
        if (b()) {
            this.lock.notify();
        }
    }

    private void m(I i10) {
        i10.b();
        I[] iArr = this.availableInputBuffers;
        int i11 = this.availableInputBufferCount;
        this.availableInputBufferCount = i11 + 1;
        iArr[i11] = i10;
    }

    private void o(O o) {
        o.b();
        O[] oArr = this.availableOutputBuffers;
        int i10 = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i10 + 1;
        oArr[i10] = o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (g());
    }
}
