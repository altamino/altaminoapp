package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class IdentityArrayIntMap {
    private int size;

    @NotNull
    private Object[] keys = new Object[4];

    @NotNull
    private int[] values = new int[4];

    @NotNull
    public final Object[] d() {
        return this.keys;
    }

    public final int e() {
        return this.size;
    }

    @NotNull
    public final int[] f() {
        return this.values;
    }

    public final void g(int i10) {
        this.size = i10;
    }

    private final int b(Object obj) {
        int i10 = this.size - 1;
        int iA = ActualJvm_jvmKt.a(obj);
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            Object obj2 = this.keys[i12];
            int iA2 = ActualJvm_jvmKt.a(obj2);
            if (iA2 < iA) {
                i11 = i12 + 1;
            } else {
                if (iA2 <= iA) {
                    return obj2 == obj ? i12 : c(i12, obj, iA);
                }
                i10 = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    private final int c(int i10, Object obj, int i11) {
        for (int i12 = i10 - 1; -1 < i12; i12--) {
            Object obj2 = this.keys[i12];
            if (obj2 == obj) {
                return i12;
            }
            if (ActualJvm_jvmKt.a(obj2) != i11) {
                break;
            }
        }
        int i13 = i10 + 1;
        int i14 = this.size;
        while (i13 < i14) {
            Object obj3 = this.keys[i13];
            if (obj3 == obj) {
                return i13;
            }
            if (ActualJvm_jvmKt.a(obj3) != i11) {
                return -(i13 + 1);
            }
            i13++;
        }
        i13 = this.size;
        return -(i13 + 1);
    }

    public final void a(@NotNull Object key, int i10) {
        int iB;
        t.j(key, "key");
        if (this.size > 0) {
            iB = b(key);
            if (iB >= 0) {
                this.values[iB] = i10;
                return;
            }
        } else {
            iB = -1;
        }
        int i11 = -(iB + 1);
        int i12 = this.size;
        Object[] objArr = this.keys;
        if (i12 == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            int[] iArr = new int[objArr.length * 2];
            int i13 = i11 + 1;
            o.i(objArr, objArr2, i13, i11, i12);
            o.g(this.values, iArr, i13, i11, this.size);
            o.m(this.keys, objArr2, 0, 0, i11, 6, null);
            o.l(this.values, iArr, 0, 0, i11, 6, null);
            this.keys = objArr2;
            this.values = iArr;
        } else {
            int i14 = i11 + 1;
            o.i(objArr, objArr, i14, i11, i12);
            int[] iArr2 = this.values;
            o.g(iArr2, iArr2, i14, i11, this.size);
        }
        this.keys[i11] = key;
        this.values[i11] = i10;
        this.size++;
    }
}
