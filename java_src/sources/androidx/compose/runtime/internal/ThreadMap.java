package androidx.compose.runtime.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class ThreadMap {

    @NotNull
    private final long[] keys;
    private final int size;

    @NotNull
    private final Object[] values;

    public ThreadMap(int i10, @NotNull long[] keys, @NotNull Object[] values) {
        t.j(keys, "keys");
        t.j(values, "values");
        this.size = i10;
        this.keys = keys;
        this.values = values;
    }

    private final int a(long j6) {
        int i10 = this.size - 1;
        if (i10 == -1) {
            return -1;
        }
        int i11 = 0;
        if (i10 == 0) {
            long j10 = this.keys[0];
            if (j10 == j6) {
                return 0;
            }
            return j10 > j6 ? -2 : -1;
        }
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            long j11 = this.keys[i12] - j6;
            if (j11 < 0) {
                i11 = i12 + 1;
            } else {
                if (j11 <= 0) {
                    return i12;
                }
                i10 = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    @NotNull
    public final ThreadMap c(long j6, @Nullable Object obj) {
        int i10 = this.size;
        int i11 = 0;
        int i12 = 0;
        for (Object obj2 : this.values) {
            if (obj2 != null) {
                i12++;
            }
        }
        int i13 = i12 + 1;
        long[] jArr = new long[i13];
        Object[] objArr = new Object[i13];
        if (i13 > 1) {
            int i14 = 0;
            while (i11 < i13 && i14 < i10) {
                long j10 = this.keys[i14];
                Object obj3 = this.values[i14];
                if (j10 > j6) {
                    jArr[i11] = j6;
                    objArr[i11] = obj;
                    i11++;
                    break;
                }
                if (obj3 != null) {
                    jArr[i11] = j10;
                    objArr[i11] = obj3;
                    i11++;
                }
                i14++;
            }
            if (i14 == i10) {
                jArr[i12] = j6;
                objArr[i12] = obj;
            } else {
                while (i11 < i13) {
                    long j11 = this.keys[i14];
                    Object obj4 = this.values[i14];
                    if (obj4 != null) {
                        jArr[i11] = j11;
                        objArr[i11] = obj4;
                        i11++;
                    }
                    i14++;
                }
            }
        } else {
            jArr[0] = j6;
            objArr[0] = obj;
        }
        return new ThreadMap(i13, jArr, objArr);
    }

    @Nullable
    public final Object b(long j6) {
        int iA = a(j6);
        if (iA >= 0) {
            return this.values[iA];
        }
        return null;
    }

    public final boolean d(long j6, @Nullable Object obj) {
        int iA = a(j6);
        if (iA < 0) {
            return false;
        }
        this.values[iA] = obj;
        return true;
    }
}
