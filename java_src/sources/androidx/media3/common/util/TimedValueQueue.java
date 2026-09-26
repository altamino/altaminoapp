package androidx.media3.common.util;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class TimedValueQueue<V> {
    private static final int INITIAL_BUFFER_SIZE = 10;
    private int first;
    private int size;
    private long[] timestamps;
    private V[] values;

    public TimedValueQueue() {
        this(10);
    }

    @Nullable
    private V h(long j6, boolean z6) {
        V vK = null;
        long j10 = Long.MAX_VALUE;
        while (this.size > 0) {
            long j11 = j6 - this.timestamps[this.first];
            if (j11 < 0 && (z6 || (-j11) >= j10)) {
                break;
            }
            vK = k();
            j10 = j11;
        }
        return vK;
    }

    public synchronized void a(long j6, V v5) {
        d(j6);
        e();
        b(j6, v5);
    }

    public synchronized void c() {
        this.first = 0;
        this.size = 0;
        Arrays.fill(this.values, (Object) null);
    }

    @Nullable
    public synchronized V g(long j6) {
        return h(j6, false);
    }

    @Nullable
    public synchronized V i() {
        return this.size == 0 ? null : k();
    }

    @Nullable
    public synchronized V j(long j6) {
        return h(j6, true);
    }

    public synchronized int l() {
        return this.size;
    }

    public TimedValueQueue(int i10) {
        this.timestamps = new long[i10];
        this.values = (V[]) f(i10);
    }

    private void b(long j6, V v5) {
        int i10 = this.first;
        int i11 = this.size;
        V[] vArr = this.values;
        int length = (i10 + i11) % vArr.length;
        this.timestamps[length] = j6;
        vArr[length] = v5;
        this.size = i11 + 1;
    }

    private void d(long j6) {
        int i10 = this.size;
        if (i10 > 0) {
            if (j6 <= this.timestamps[((this.first + i10) - 1) % this.values.length]) {
                c();
            }
        }
    }

    private void e() {
        int length = this.values.length;
        if (this.size < length) {
            return;
        }
        int i10 = length * 2;
        long[] jArr = new long[i10];
        V[] vArr = (V[]) f(i10);
        int i11 = this.first;
        int i12 = length - i11;
        System.arraycopy(this.timestamps, i11, jArr, 0, i12);
        System.arraycopy(this.values, this.first, vArr, 0, i12);
        int i13 = this.first;
        if (i13 > 0) {
            System.arraycopy(this.timestamps, 0, jArr, i12, i13);
            System.arraycopy(this.values, 0, vArr, i12, this.first);
        }
        this.timestamps = jArr;
        this.values = vArr;
        this.first = 0;
    }

    private static <V> V[] f(int i10) {
        return (V[]) new Object[i10];
    }

    @Nullable
    private V k() {
        Assertions.g(this.size > 0);
        V[] vArr = this.values;
        int i10 = this.first;
        V v5 = vArr[i10];
        vArr[i10] = null;
        this.first = (i10 + 1) % vArr.length;
        this.size--;
        return v5;
    }
}
