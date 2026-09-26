package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import kotlin.collections.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class IdentityArrayMap<Key, Value> {

    @NotNull
    private Object[] keys;
    private int size;

    @NotNull
    private Object[] values;

    public IdentityArrayMap() {
        this(0, 1, null);
    }

    @NotNull
    public final Object[] e() {
        return this.keys;
    }

    public final int f() {
        return this.size;
    }

    @NotNull
    public final Object[] g() {
        return this.values;
    }

    public final boolean h() {
        return this.size > 0;
    }

    public IdentityArrayMap(int i10) {
        this.keys = new Object[i10];
        this.values = new Object[i10];
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

    public final boolean a(@NotNull Key key) {
        t.j(key, "key");
        return b(key) >= 0;
    }

    @Nullable
    public final Value d(@NotNull Key key) {
        t.j(key, "key");
        int iB = b(key);
        if (iB >= 0) {
            return (Value) this.values[iB];
        }
        return null;
    }

    public final boolean i(@NotNull Key key) {
        t.j(key, "key");
        int iB = b(key);
        if (iB < 0) {
            return false;
        }
        int i10 = this.size;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int i11 = iB + 1;
        o.i(objArr, objArr, iB, i11, i10);
        o.i(objArr2, objArr2, iB, i11, i10);
        int i12 = i10 - 1;
        objArr[i12] = null;
        objArr2[i12] = null;
        this.size = i12;
        return true;
    }

    public final void j(@NotNull Key key, Value value) {
        t.j(key, "key");
        int iB = b(key);
        if (iB >= 0) {
            this.values[iB] = value;
            return;
        }
        int i10 = -(iB + 1);
        int i11 = this.size;
        Object[] objArr = this.keys;
        boolean z6 = i11 == objArr.length;
        Object[] objArr2 = z6 ? new Object[i11 * 2] : objArr;
        int i12 = i10 + 1;
        o.i(objArr, objArr2, i12, i10, i11);
        if (z6) {
            o.m(this.keys, objArr2, 0, 0, i10, 6, null);
        }
        objArr2[i10] = key;
        this.keys = objArr2;
        Object[] objArr3 = z6 ? new Object[this.size * 2] : this.values;
        o.i(this.values, objArr3, i12, i10, this.size);
        if (z6) {
            o.m(this.values, objArr3, 0, 0, i10, 6, null);
        }
        objArr3[i10] = value;
        this.values = objArr3;
        this.size++;
    }

    private final int b(Object obj) {
        int iA = ActualJvm_jvmKt.a(obj);
        int i10 = this.size - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            Object obj2 = this.keys[i12];
            int iA2 = ActualJvm_jvmKt.a(obj2);
            if (iA2 < iA) {
                i11 = i12 + 1;
            } else if (iA2 > iA) {
                i10 = i12 - 1;
            } else {
                if (obj == obj2) {
                    return i12;
                }
                return c(i12, obj, iA);
            }
        }
        return -(i11 + 1);
    }

    public /* synthetic */ IdentityArrayMap(int i10, int i11, k kVar) {
        this((i11 & 1) != 0 ? 16 : i10);
    }
}
