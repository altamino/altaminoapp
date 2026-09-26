package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class d0 extends c0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements kotlin.sequences.g<T> {
        final /* synthetic */ Iterable $this_asSequence$inlined;

        public a(Iterable iterable) {
            this.$this_asSequence$inlined = iterable;
        }

        @Override // kotlin.sequences.g
        @NotNull
        public Iterator<T> iterator() {
            return this.$this_asSequence$inlined.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<T> extends kotlin.jvm.internal.v implements e8.l<Integer, T> {
        final /* synthetic */ int $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10) {
            super(1);
            this.$index = i10;
        }

        public final T b(int i10) {
            throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + this.$index + '.');
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Object invoke(Integer num) {
            return b(num.intValue());
        }
    }

    @Nullable
    public static Float A0(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float fFloatValue = it.next().floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.min(fFloatValue, it.next().floatValue());
        }
        return Float.valueOf(fFloatValue);
    }

    @NotNull
    public static <T> List<T> B0(@NotNull Iterable<? extends T> iterable, T t5) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        ArrayList arrayList = new ArrayList(w.x(iterable, 10));
        boolean z6 = false;
        for (T t10 : iterable) {
            boolean z10 = true;
            if (!z6 && kotlin.jvm.internal.t.e(t10, t5)) {
                z6 = true;
                z10 = false;
            }
            if (z10) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> C0(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        if (iterable instanceof Collection) {
            return D0((Collection) iterable, elements);
        }
        ArrayList arrayList = new ArrayList();
        a0.D(arrayList, iterable);
        a0.D(arrayList, elements);
        return arrayList;
    }

    @NotNull
    public static <T> List<T> D0(@NotNull Collection<? extends T> collection, @NotNull Iterable<? extends T> elements) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        kotlin.jvm.internal.t.j(elements, "elements");
        if (!(elements instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            a0.D(arrayList, elements);
            return arrayList;
        }
        Collection collection2 = (Collection) elements;
        ArrayList arrayList2 = new ArrayList(collection.size() + collection2.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    @NotNull
    public static <T> List<T> E0(@NotNull Collection<? extends T> collection, T t5) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t5);
        return arrayList;
    }

    public static <T> T F0(@NotNull Collection<? extends T> collection, @NotNull h8.d random) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        kotlin.jvm.internal.t.j(random, "random");
        if (collection.isEmpty()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        return (T) d0(collection, random.e(collection.size()));
    }

    @NotNull
    public static <T> List<T> G0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return U0(iterable);
        }
        List<T> listV0 = V0(iterable);
        c0.X(listV0);
        return listV0;
    }

    public static <T> T H0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) I0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        if (it.hasNext()) {
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        return next;
    }

    public static final <T> T I0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        int size = list.size();
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        }
        if (size == 1) {
            return list.get(0);
        }
        throw new IllegalArgumentException("List has more than one element.");
    }

    @Nullable
    public static <T> T J0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    @NotNull
    public static <T extends Comparable<? super T>> List<T> K0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            List<T> listV0 = V0(iterable);
            z.B(listV0);
            return listV0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return U0(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        o.x((Comparable[]) array);
        return o.c(array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> List<T> L0(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(comparator, "comparator");
        if (!(iterable instanceof Collection)) {
            List<T> listV0 = V0(iterable);
            z.C(listV0, comparator);
            return listV0;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return U0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        o.y(array, comparator);
        return o.c(array);
    }

    public static int M0(@NotNull Iterable<Integer> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<Integer> it = iterable.iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += it.next().intValue();
        }
        return iIntValue;
    }

    public static long N0(@NotNull Iterable<Long> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<Long> it = iterable.iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            jLongValue += it.next().longValue();
        }
        return jLongValue;
    }

    @NotNull
    public static <T> List<T> O0(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return v.m();
        }
        if (iterable instanceof Collection) {
            if (i10 >= ((Collection) iterable).size()) {
                return U0(iterable);
            }
            if (i10 == 1) {
                return u.e(i0(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i10);
        Iterator<? extends T> it = iterable.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return v.t(arrayList);
    }

    @NotNull
    public static boolean[] P0(@NotNull Collection<Boolean> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        Iterator<Boolean> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            zArr[i10] = it.next().booleanValue();
            i10++;
        }
        return zArr;
    }

    @NotNull
    public static <T, C extends Collection<? super T>> C Q0(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }

    @NotNull
    public static float[] R0(@NotNull Collection<Float> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        float[] fArr = new float[collection.size()];
        Iterator<Float> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            fArr[i10] = it.next().floatValue();
            i10++;
        }
        return fArr;
    }

    @NotNull
    public static <T> HashSet<T> S0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return (HashSet) Q0(iterable, new HashSet(r0.e(w.x(iterable, 12))));
    }

    @NotNull
    public static int[] T0(@NotNull Collection<Integer> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            iArr[i10] = it.next().intValue();
            i10++;
        }
        return iArr;
    }

    @NotNull
    public static <T> List<T> U0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return v.t(V0(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return v.m();
        }
        if (size != 1) {
            return W0(collection);
        }
        return u.e(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    @NotNull
    public static final <T> List<T> V0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return iterable instanceof Collection ? W0((Collection) iterable) : (List) Q0(iterable, new ArrayList());
    }

    @NotNull
    public static <T> List<T> W0(@NotNull Collection<? extends T> collection) {
        kotlin.jvm.internal.t.j(collection, "<this>");
        return new ArrayList(collection);
    }

    @NotNull
    public static <T> Set<T> X0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return iterable instanceof Collection ? new LinkedHashSet((Collection) iterable) : (Set) Q0(iterable, new LinkedHashSet());
    }

    @NotNull
    public static <T> kotlin.sequences.g<T> Y(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return new a(iterable);
    }

    @NotNull
    public static <T> Set<T> Y0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return y0.h((Set) Q0(iterable, new LinkedHashSet()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return y0.e();
        }
        if (size != 1) {
            return (Set) Q0(iterable, new LinkedHashSet(r0.e(collection.size())));
        }
        return x0.d(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static <T> boolean Z(@NotNull Iterable<? extends T> iterable, T t5) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t5);
        }
        return n0(iterable, t5) >= 0;
    }

    @NotNull
    public static <T, R> List<w7.u<T, R>> Z0(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends R> other) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(w.x(iterable, 10), w.x(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(w7.a0.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> a0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return U0(X0(iterable));
    }

    @NotNull
    public static <T> List<T> b0(@NotNull Iterable<? extends T> iterable, int i10) {
        ArrayList arrayList;
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return U0(iterable);
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size() - i10;
            if (size <= 0) {
                return v.m();
            }
            if (size == 1) {
                return u.e(u0(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    int size2 = collection.size();
                    while (i10 < size2) {
                        arrayList.add(((List) iterable).get(i10));
                        i10++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i10);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i11 = 0;
        for (T t5 : iterable) {
            if (i11 >= i10) {
                arrayList.add(t5);
            } else {
                i11++;
            }
        }
        return v.t(arrayList);
    }

    @NotNull
    public static <T> List<T> c0(@NotNull List<? extends T> list, int i10) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (i10 >= 0) {
            return O0(list, j8.o.e(list.size() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final <T> T d0(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return iterable instanceof List ? (T) ((List) iterable).get(i10) : (T) e0(iterable, i10, new b(i10));
    }

    public static final <T> T e0(@NotNull Iterable<? extends T> iterable, int i10, @NotNull e8.l<? super Integer, ? extends T> defaultValue) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(defaultValue, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            return (i10 < 0 || i10 > v.o(list)) ? defaultValue.invoke(Integer.valueOf(i10)) : (T) list.get(i10);
        }
        if (i10 < 0) {
            return defaultValue.invoke(Integer.valueOf(i10));
        }
        int i11 = 0;
        for (T t5 : iterable) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t5;
            }
            i11 = i12;
        }
        return defaultValue.invoke(Integer.valueOf(i10));
    }

    @Nullable
    public static <T> T f0(@NotNull Iterable<? extends T> iterable, int i10) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) m0((List) iterable, i10);
        }
        if (i10 < 0) {
            return null;
        }
        int i11 = 0;
        for (T t5 : iterable) {
            int i12 = i11 + 1;
            if (i10 == i11) {
                return t5;
            }
            i11 = i12;
        }
        return null;
    }

    @NotNull
    public static <T> List<T> g0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        return (List) h0(iterable, new ArrayList());
    }

    @NotNull
    public static final <C extends Collection<? super T>, T> C h0(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(destination, "destination");
        for (T t5 : iterable) {
            if (t5 != null) {
                destination.add(t5);
            }
        }
        return destination;
    }

    public static <T> T i0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) j0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static <T> T j0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    @Nullable
    public static <T> T k0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Nullable
    public static <T> T l0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Nullable
    public static <T> T m0(@NotNull List<? extends T> list, int i10) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (i10 < 0 || i10 > v.o(list)) {
            return null;
        }
        return list.get(i10);
    }

    public static final <T> int n0(@NotNull Iterable<? extends T> iterable, T t5) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t5);
        }
        int i10 = 0;
        for (T t10 : iterable) {
            if (i10 < 0) {
                v.w();
            }
            if (kotlin.jvm.internal.t.e(t5, t10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static <T> int o0(@NotNull List<? extends T> list, T t5) {
        kotlin.jvm.internal.t.j(list, "<this>");
        return list.indexOf(t5);
    }

    @NotNull
    public static <T> Set<T> p0(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> other) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(other, "other");
        Set<T> setX0 = X0(iterable);
        a0.O(setX0, other);
        return setX0;
    }

    @NotNull
    public static final <T, A extends Appendable> A q0(@NotNull Iterable<? extends T> iterable, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) throws IOException {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(buffer, "buffer");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t5 : iterable) {
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
    public static final <T> String s0(@NotNull Iterable<? extends T> iterable, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        kotlin.jvm.internal.t.j(separator, "separator");
        kotlin.jvm.internal.t.j(prefix, "prefix");
        kotlin.jvm.internal.t.j(postfix, "postfix");
        kotlin.jvm.internal.t.j(truncated, "truncated");
        String string = ((StringBuilder) q0(iterable, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String t0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, e8.l lVar, int i11, Object obj) {
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
        return s0(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static final <T> T u0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) v0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Collection is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static <T> T v0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(v.o(list));
    }

    @Nullable
    public static <T> T w0(@NotNull List<? extends T> list) {
        kotlin.jvm.internal.t.j(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    @Nullable
    public static <T extends Comparable<? super T>> T x0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @Nullable
    public static Float y0(@NotNull Iterable<Float> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float fFloatValue = it.next().floatValue();
        while (it.hasNext()) {
            fFloatValue = Math.max(fFloatValue, it.next().floatValue());
        }
        return Float.valueOf(fFloatValue);
    }

    @Nullable
    public static <T extends Comparable<? super T>> T z0(@NotNull Iterable<? extends T> iterable) {
        kotlin.jvm.internal.t.j(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }
}
