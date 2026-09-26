package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import java.util.Arrays;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class IdentityScopeMap<T> {

    @NotNull
    private IdentityArraySet<T>[] scopeSets;
    private int size;

    @NotNull
    private int[] valueOrder;

    @NotNull
    private Object[] values;

    @NotNull
    public final IdentityArraySet<T>[] i() {
        return this.scopeSets;
    }

    public final int j() {
        return this.size;
    }

    @NotNull
    public final int[] k() {
        return this.valueOrder;
    }

    @NotNull
    public final Object[] l() {
        return this.values;
    }

    public final void p(int i10) {
        this.size = i10;
    }

    private final int g(int i10, Object obj, int i11) {
        for (int i12 = i10 - 1; -1 < i12; i12--) {
            Object obj2 = this.values[this.valueOrder[i12]];
            t.g(obj2);
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
            Object obj3 = this.values[this.valueOrder[i13]];
            t.g(obj3);
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

    private final IdentityArraySet<T> h(Object obj) {
        int iF;
        if (this.size > 0) {
            iF = f(obj);
            if (iF >= 0) {
                return o(iF);
            }
        } else {
            iF = -1;
        }
        int i10 = -(iF + 1);
        int i11 = this.size;
        int[] iArr = this.valueOrder;
        if (i11 < iArr.length) {
            int i12 = iArr[i11];
            this.values[i12] = obj;
            IdentityArraySet<T> identityArraySet = this.scopeSets[i12];
            if (identityArraySet == null) {
                identityArraySet = new IdentityArraySet<>();
                this.scopeSets[i12] = identityArraySet;
            }
            int i13 = this.size;
            if (i10 < i13) {
                int[] iArr2 = this.valueOrder;
                o.g(iArr2, iArr2, i10 + 1, i10, i13);
            }
            this.valueOrder[i10] = i12;
            this.size++;
            return identityArraySet;
        }
        int length = iArr.length * 2;
        Object[] objArrCopyOf = Arrays.copyOf(this.scopeSets, length);
        t.i(objArrCopyOf, "copyOf(this, newSize)");
        this.scopeSets = (IdentityArraySet[]) objArrCopyOf;
        IdentityArraySet<T> identityArraySet2 = new IdentityArraySet<>();
        this.scopeSets[i11] = identityArraySet2;
        Object[] objArrCopyOf2 = Arrays.copyOf(this.values, length);
        t.i(objArrCopyOf2, "copyOf(this, newSize)");
        this.values = objArrCopyOf2;
        objArrCopyOf2[i11] = obj;
        int[] iArr3 = new int[length];
        int i14 = this.size;
        while (true) {
            i14++;
            if (i14 >= length) {
                break;
            }
            iArr3[i14] = i14;
        }
        int i15 = this.size;
        if (i10 < i15) {
            o.g(this.valueOrder, iArr3, i10 + 1, i10, i15);
        }
        iArr3[i10] = i11;
        if (i10 > 0) {
            o.l(this.valueOrder, iArr3, 0, 0, i10, 6, null);
        }
        this.valueOrder = iArr3;
        this.size++;
        return identityArraySet2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final IdentityArraySet<T> o(int i10) {
        IdentityArraySet<T> identityArraySet = this.scopeSets[this.valueOrder[i10]];
        t.g(identityArraySet);
        return identityArraySet;
    }

    public final boolean c(@NotNull Object value, @NotNull T scope) {
        t.j(value, "value");
        t.j(scope, "scope");
        return h(value).add(scope);
    }

    public final void d() {
        int length = this.scopeSets.length;
        for (int i10 = 0; i10 < length; i10++) {
            IdentityArraySet<T> identityArraySet = this.scopeSets[i10];
            if (identityArraySet != null) {
                identityArraySet.clear();
            }
            this.valueOrder[i10] = i10;
            this.values[i10] = null;
        }
        this.size = 0;
    }

    public final boolean e(@NotNull Object element) {
        t.j(element, "element");
        return f(element) >= 0;
    }

    public final boolean m(@NotNull Object value, @NotNull T scope) {
        int i10;
        IdentityArraySet<T> identityArraySet;
        t.j(value, "value");
        t.j(scope, "scope");
        int iF = f(value);
        if (iF < 0 || (identityArraySet = this.scopeSets[(i10 = this.valueOrder[iF])]) == null) {
            return false;
        }
        boolean zRemove = identityArraySet.remove(scope);
        if (identityArraySet.size() == 0) {
            int i11 = iF + 1;
            int i12 = this.size;
            if (i11 < i12) {
                int[] iArr = this.valueOrder;
                o.g(iArr, iArr, iF, i11, i12);
            }
            int[] iArr2 = this.valueOrder;
            int i13 = this.size;
            iArr2[i13 - 1] = i10;
            this.values[i10] = null;
            this.size = i13 - 1;
        }
        return zRemove;
    }

    public final void n(@NotNull T scope) {
        t.j(scope, "scope");
        int iJ = j();
        int i10 = 0;
        for (int i11 = 0; i11 < iJ; i11++) {
            int i12 = k()[i11];
            IdentityArraySet<T> identityArraySet = i()[i12];
            t.g(identityArraySet);
            identityArraySet.remove(scope);
            if (identityArraySet.size() > 0) {
                if (i10 != i11) {
                    int i13 = k()[i10];
                    k()[i10] = i12;
                    k()[i11] = i13;
                }
                i10++;
            }
        }
        int iJ2 = j();
        for (int i14 = i10; i14 < iJ2; i14++) {
            l()[k()[i14]] = null;
        }
        p(i10);
    }

    public IdentityScopeMap() {
        int[] iArr = new int[50];
        for (int i10 = 0; i10 < 50; i10++) {
            iArr[i10] = i10;
        }
        this.valueOrder = iArr;
        this.values = new Object[50];
        this.scopeSets = new IdentityArraySet[50];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int f(Object obj) {
        int iA = ActualJvm_jvmKt.a(obj);
        int i10 = this.size - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            Object obj2 = this.values[this.valueOrder[i12]];
            t.g(obj2);
            int iA2 = ActualJvm_jvmKt.a(obj2);
            if (iA2 < iA) {
                i11 = i12 + 1;
            } else if (iA2 > iA) {
                i10 = i12 - 1;
            } else {
                if (obj == obj2) {
                    return i12;
                }
                return g(i12, obj, iA);
            }
        }
        return -(i11 + 1);
    }
}
