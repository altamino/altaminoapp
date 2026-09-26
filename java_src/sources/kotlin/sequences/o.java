package kotlin.sequences;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public class o extends n {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements Iterable<T>, f8.a {
        final /* synthetic */ g $this_asIterable$inlined;

        public a(g gVar) {
            this.$this_asIterable$inlined = gVar;
        }

        @Override // java.lang.Iterable
        @NotNull
        public Iterator<T> iterator() {
            return this.$this_asIterable$inlined.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<T> extends v implements e8.l<T, Boolean> {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@Nullable T t5) {
            return Boolean.valueOf(t5 == null);
        }
    }

    @NotNull
    public static <T> List<T> A(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        Iterator<? extends T> it = gVar.iterator();
        if (!it.hasNext()) {
            return kotlin.collections.v.m();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return u.e(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> B(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        return (List) z(gVar, new ArrayList());
    }

    @NotNull
    public static <T> Iterable<T> h(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        return new a(gVar);
    }

    public static <T> boolean i(@NotNull g<? extends T> gVar, T t5) {
        t.j(gVar, "<this>");
        return p(gVar, t5) >= 0;
    }

    public static <T> int j(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        Iterator<? extends T> it = gVar.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
            if (i10 < 0) {
                kotlin.collections.v.v();
            }
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> g<T> k(@NotNull g<? extends T> gVar, int i10) {
        t.j(gVar, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return gVar;
            }
            return gVar instanceof c ? ((c) gVar).a(i10) : new kotlin.sequences.b(gVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> g<T> l(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, Boolean> predicate) {
        t.j(gVar, "<this>");
        t.j(predicate, "predicate");
        return new e(gVar, true, predicate);
    }

    @NotNull
    public static final <T> g<T> m(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, Boolean> predicate) {
        t.j(gVar, "<this>");
        t.j(predicate, "predicate");
        return new e(gVar, false, predicate);
    }

    @NotNull
    public static <T> g<T> n(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        g<T> gVarM = m(gVar, b.INSTANCE);
        t.h(gVarM, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return gVarM;
    }

    @Nullable
    public static <T> T o(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        Iterator<? extends T> it = gVar.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static final <T> int p(@NotNull g<? extends T> gVar, T t5) {
        t.j(gVar, "<this>");
        int i10 = 0;
        for (T t10 : gVar) {
            if (i10 < 0) {
                kotlin.collections.v.w();
            }
            if (t.e(t5, t10)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    @NotNull
    public static final <T, A extends Appendable> A q(@NotNull g<? extends T> gVar, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) throws IOException {
        t.j(gVar, "<this>");
        t.j(buffer, "buffer");
        t.j(separator, "separator");
        t.j(prefix, "prefix");
        t.j(postfix, "postfix");
        t.j(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t5 : gVar) {
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
    public static final <T> String r(@NotNull g<? extends T> gVar, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable e8.l<? super T, ? extends CharSequence> lVar) {
        t.j(gVar, "<this>");
        t.j(separator, "separator");
        t.j(prefix, "prefix");
        t.j(postfix, "postfix");
        t.j(truncated, "truncated");
        String string = ((StringBuilder) q(gVar, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        t.i(string, "toString(...)");
        return string;
    }

    public static /* synthetic */ String s(g gVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, e8.l lVar, int i11, Object obj) {
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
        return r(gVar, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static <T> T t(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        Iterator<? extends T> it = gVar.iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException("Sequence is empty.");
        }
        T next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    @NotNull
    public static <T, R> g<R> u(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, ? extends R> transform) {
        t.j(gVar, "<this>");
        t.j(transform, "transform");
        return new s(gVar, transform);
    }

    @NotNull
    public static <T, R> g<R> v(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, ? extends R> transform) {
        t.j(gVar, "<this>");
        t.j(transform, "transform");
        return n(new s(gVar, transform));
    }

    @Nullable
    public static <T extends Comparable<? super T>> T w(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        Iterator<? extends T> it = gVar.iterator();
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

    @NotNull
    public static <T> g<T> x(@NotNull g<? extends T> gVar, int i10) {
        t.j(gVar, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return m.e();
            }
            return gVar instanceof c ? ((c) gVar).b(i10) : new q(gVar, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> g<T> y(@NotNull g<? extends T> gVar, @NotNull e8.l<? super T, Boolean> predicate) {
        t.j(gVar, "<this>");
        t.j(predicate, "predicate");
        return new r(gVar, predicate);
    }

    @NotNull
    public static final <T, C extends Collection<? super T>> C z(@NotNull g<? extends T> gVar, @NotNull C destination) {
        t.j(gVar, "<this>");
        t.j(destination, "destination");
        Iterator<? extends T> it = gVar.iterator();
        while (it.hasNext()) {
            destination.add(it.next());
        }
        return destination;
    }
}
