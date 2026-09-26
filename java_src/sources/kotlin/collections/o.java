package kotlin.collections;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes10.dex */
public class o extends n {
    @NotNull
    public static <T> List<T> c(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        List<T> listA = q.a(tArr);
        kotlin.jvm.internal.t.i(listA, "asList(...)");
        return listA;
    }

    @NotNull
    public static byte[] d(@NotNull byte[] bArr, @NotNull byte[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static char[] e(@NotNull char[] cArr, @NotNull char[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(cArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static float[] f(@NotNull float[] fArr, @NotNull float[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(fArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(fArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static int[] g(@NotNull int[] iArr, @NotNull int[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static long[] h(@NotNull long[] jArr, @NotNull long[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    @NotNull
    public static <T> T[] i(@NotNull T[] tArr, @NotNull T[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        System.arraycopy(tArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static /* synthetic */ byte[] j(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        return d(bArr, bArr2, i10, i11, i12);
    }

    public static /* synthetic */ float[] k(float[] fArr, float[] fArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = fArr.length;
        }
        return f(fArr, fArr2, i10, i11, i12);
    }

    public static /* synthetic */ int[] l(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        return g(iArr, iArr2, i10, i11, i12);
    }

    public static /* synthetic */ Object[] m(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return i(objArr, objArr2, i10, i11, i12);
    }

    @NotNull
    public static byte[] n(@NotNull byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        m.b(i11, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        kotlin.jvm.internal.t.i(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    @NotNull
    public static float[] o(@NotNull float[] fArr, int i10, int i11) {
        kotlin.jvm.internal.t.j(fArr, "<this>");
        m.b(i11, fArr.length);
        float[] fArrCopyOfRange = Arrays.copyOfRange(fArr, i10, i11);
        kotlin.jvm.internal.t.i(fArrCopyOfRange, "copyOfRange(...)");
        return fArrCopyOfRange;
    }

    @NotNull
    public static <T> T[] p(@NotNull T[] tArr, int i10, int i11) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        m.b(i11, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, i10, i11);
        kotlin.jvm.internal.t.i(tArr2, "copyOfRange(...)");
        return tArr2;
    }

    public static void q(@NotNull int[] iArr, int i10, int i11, int i12) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        Arrays.fill(iArr, i11, i12, i10);
    }

    public static <T> void r(@NotNull T[] tArr, T t5, int i10, int i11) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        Arrays.fill(tArr, i10, i11, t5);
    }

    public static /* synthetic */ void s(int[] iArr, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = iArr.length;
        }
        q(iArr, i10, i11, i12);
    }

    public static /* synthetic */ void t(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        r(objArr, obj, i10, i11);
    }

    @NotNull
    public static int[] u(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + 1);
        iArrCopyOf[length] = i10;
        kotlin.jvm.internal.t.g(iArrCopyOf);
        return iArrCopyOf;
    }

    @NotNull
    public static int[] v(@NotNull int[] iArr, @NotNull int[] elements) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        int length = iArr.length;
        int length2 = elements.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, length + length2);
        System.arraycopy(elements, 0, iArrCopyOf, length, length2);
        kotlin.jvm.internal.t.g(iArrCopyOf);
        return iArrCopyOf;
    }

    @NotNull
    public static <T> T[] w(@NotNull T[] tArr, T t5) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        int length = tArr.length;
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, length + 1);
        tArr2[length] = t5;
        kotlin.jvm.internal.t.g(tArr2);
        return tArr2;
    }

    public static <T> void x(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    public static final <T> void y(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }

    public static <T> void z(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator, int i10, int i11) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(comparator, "comparator");
        Arrays.sort(tArr, i10, i11, comparator);
    }
}
