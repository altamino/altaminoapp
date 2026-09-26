package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class p extends o {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements kotlin.sequences.g<T> {
        final /* synthetic */ Object[] $this_asSequence$inlined;

        public a(Object[] objArr) {
            this.$this_asSequence$inlined = objArr;
        }

        @Override // kotlin.sequences.g
        @NotNull
        public Iterator<T> iterator() {
            return kotlin.jvm.internal.c.a(this.$this_asSequence$inlined);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<T> extends kotlin.jvm.internal.v implements e8.a<Iterator<? extends T>> {
        final /* synthetic */ T[] $this_withIndex;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(T[] tArr) {
            super(0);
            this.$this_withIndex = tArr;
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterator<T> invoke() {
            return kotlin.jvm.internal.c.a(this.$this_withIndex);
        }
    }

    @NotNull
    public static <T> kotlin.sequences.g<T> A(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return tArr.length == 0 ? kotlin.sequences.m.e() : new a(tArr);
    }

    public static boolean B(@NotNull byte[] bArr, byte b7) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        return T(bArr, b7) >= 0;
    }

    public static boolean C(@NotNull char[] cArr, char c7) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        return U(cArr, c7) >= 0;
    }

    public static boolean D(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        return V(iArr, i10) >= 0;
    }

    public static boolean E(@NotNull long[] jArr, long j6) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        return W(jArr, j6) >= 0;
    }

    public static <T> boolean F(@NotNull T[] tArr, T t5) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return X(tArr, t5) >= 0;
    }

    public static boolean G(@NotNull short[] sArr, short s) {
        kotlin.jvm.internal.t.j(sArr, "<this>");
        return Y(sArr, s) >= 0;
    }

    @NotNull
    public static <T> List<T> H(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return d0.U0(w0(tArr));
    }

    @NotNull
    public static <T> List<T> I(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (i10 >= 0) {
            return q0(tArr, j8.o.e(tArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> List<T> J(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return (List) K(tArr, new ArrayList());
    }

    @NotNull
    public static final <C extends Collection<? super T>, T> C K(@NotNull T[] tArr, @NotNull C destination) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        for (T t5 : tArr) {
            if (t5 != null) {
                destination.add(t5);
            }
        }
        return destination;
    }

    public static int L(@NotNull int[] iArr) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static <T> T M(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (tArr.length != 0) {
            return tArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    @Nullable
    public static <T> T N(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[0];
    }

    @NotNull
    public static j8.i O(@NotNull int[] iArr) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        return new j8.i(0, P(iArr));
    }

    public static int P(@NotNull int[] iArr) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        return iArr.length - 1;
    }

    public static int Q(@NotNull long[] jArr) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        return jArr.length - 1;
    }

    public static <T> int R(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return tArr.length - 1;
    }

    @Nullable
    public static <T> T S(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (i10 < 0 || i10 > R(tArr)) {
            return null;
        }
        return tArr[i10];
    }

    public static final int T(@NotNull byte[] bArr, byte b7) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (b7 == bArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int U(@NotNull char[] cArr, char c7) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (c7 == cArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int V(@NotNull int[] iArr, int i10) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 == iArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static int W(@NotNull long[] jArr, long j6) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (j6 == jArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static <T> int X(@NotNull T[] tArr, T t5) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        int i10 = 0;
        if (t5 == null) {
            int length = tArr.length;
            while (i10 < length) {
                if (tArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i10 < length2) {
            if (kotlin.jvm.internal.t.e(t5, tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final int Y(@NotNull short[] sArr, short s) {
        kotlin.jvm.internal.t.j(sArr, "<this>");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (s == sArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @NotNull
    public static final <A extends Appendable> A Z(@NotNull byte[] bArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super Byte, ? extends CharSequence> lVar) throws IOException {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(buffer, "buffer");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (byte b7 : bArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append(lVar.invoke(Byte.valueOf(b7)));
            } else {
                buffer.append(String.valueOf((int) b7));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    @NotNull
    public static final <T, A extends Appendable> A a0(@NotNull T[] tArr, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) throws IOException {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(buffer, "buffer");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t5 : tArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            kotlin.text.l.a(buffer, t5, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    @NotNull
    public static final String c0(@NotNull byte[] bArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super Byte, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.t.j(bArr, "<this>");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        String string = ((StringBuilder) Z(bArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    @NotNull
    public static final <T> String d0(@NotNull T[] tArr, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        String string = ((StringBuilder) a0(tArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String e0(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, e8.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return c0(bArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static /* synthetic */ String f0(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, e8.l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return d0(objArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static int g0(@NotNull int[] iArr) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[P(iArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static <T> T h0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (tArr.length != 0) {
            return tArr[R(tArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static <T> int i0(@NotNull T[] tArr, T t5) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (t5 == null) {
            int length = tArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i10 = length - 1;
                    if (tArr[length] == null) {
                        return length;
                    }
                    if (i10 >= 0) {
                        length = i10;
                    }
                }
            }
        } else {
            int length2 = tArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i11 = length2 - 1;
                    if (kotlin.jvm.internal.t.e(t5, tArr[length2])) {
                        return length2;
                    }
                    if (i11 < 0) {
                        break;
                    }
                    length2 = i11;
                }
            }
        }
        return -1;
    }

    @Nullable
    public static Long j0(@NotNull long[] jArr) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        long j6 = jArr[0];
        m0 m0VarJ = new j8.i(1, Q(jArr)).iterator();
        while (m0VarJ.hasNext()) {
            long j10 = jArr[m0VarJ.nextInt()];
            if (j6 < j10) {
                j6 = j10;
            }
        }
        return Long.valueOf(j6);
    }

    @Nullable
    public static Long k0(@NotNull long[] jArr) {
        kotlin.jvm.internal.t.j(jArr, "<this>");
        if (jArr.length == 0) {
            return null;
        }
        long j6 = jArr[0];
        m0 m0VarJ = new j8.i(1, Q(jArr)).iterator();
        while (m0VarJ.hasNext()) {
            long j10 = jArr[m0VarJ.nextInt()];
            if (j6 > j10) {
                j6 = j10;
            }
        }
        return Long.valueOf(j6);
    }

    public static char l0(@NotNull char[] cArr) {
        kotlin.jvm.internal.t.j(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    @Nullable
    public static <T> T m0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    @NotNull
    public static <T> List<T> n0(@NotNull T[] tArr, @NotNull j8.i indices) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(indices, "indices");
        return indices.isEmpty() ? v.m() : o.c(o.p(tArr, indices.getStart().intValue(), indices.c().intValue() + 1));
    }

    @NotNull
    public static final <T> T[] o0(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        kotlin.jvm.internal.t.i(tArr2, "copyOf(...)");
        o.y(tArr2, comparator);
        return tArr2;
    }

    @NotNull
    public static <T> List<T> p0(@NotNull T[] tArr, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(comparator, "comparator");
        return o.c(o0(tArr, comparator));
    }

    @NotNull
    public static final <T> List<T> q0(@NotNull T[] tArr, int i10) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return v.m();
        }
        int length = tArr.length;
        if (i10 >= length) {
            return t0(tArr);
        }
        if (i10 == 1) {
            return u.e(tArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(tArr[i11]);
        }
        return arrayList;
    }

    @NotNull
    public static final <T, C extends Collection<? super T>> C r0(@NotNull T[] tArr, @NotNull C destination) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        for (T t5 : tArr) {
            destination.add(t5);
        }
        return destination;
    }

    @NotNull
    public static <T> HashSet<T> s0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return (HashSet) r0(tArr, new HashSet(r0.e(tArr.length)));
    }

    @NotNull
    public static <T> List<T> t0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        int length = tArr.length;
        if (length != 0) {
            return length != 1 ? v0(tArr) : u.e(tArr[0]);
        }
        return v.m();
    }

    @NotNull
    public static List<Integer> u0(@NotNull int[] iArr) {
        kotlin.jvm.internal.t.j(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> v0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return new ArrayList(v.h(tArr));
    }

    @NotNull
    public static final <T> Set<T> w0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return (Set) r0(tArr, new LinkedHashSet(r0.e(tArr.length)));
    }

    @NotNull
    public static final <T> Set<T> x0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        int length = tArr.length;
        if (length != 0) {
            return length != 1 ? (Set) r0(tArr, new LinkedHashSet(r0.e(tArr.length))) : x0.d(tArr[0]);
        }
        return y0.e();
    }

    @NotNull
    public static <T> Iterable<j0<T>> y0(@NotNull T[] tArr) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        return new k0(new b(tArr));
    }

    @NotNull
    public static <T, R> List<w7.u<T, R>> z0(@NotNull T[] tArr, @NotNull R[] other) {
        kotlin.jvm.internal.t.j(tArr, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        int iMin = Math.min(tArr.length, other.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i10 = 0; i10 < iMin; i10++) {
            arrayList.add(w7.a0.a(tArr[i10], other[i10]));
        }
        return arrayList;
    }
}
