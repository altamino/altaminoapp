package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
public class m extends l {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ Iterator $this_asSequence$inlined;

        @Override // kotlin.sequences.g
        @NotNull
        public Iterator<T> iterator() {
            return this.$this_asSequence$inlined;
        }

        public a(Iterator it) {
            this.$this_asSequence$inlined = it;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    static final class b<T> extends v implements e8.a<T> {
        final /* synthetic */ T $seed;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(T t5) {
            super(0);
            this.$seed = t5;
        }

        @Override // e8.a
        @Nullable
        public final T invoke() {
            return this.$seed;
        }
    }

    @NotNull
    public static <T> g<T> c(@NotNull Iterator<? extends T> it) {
        t.j(it, "<this>");
        return d(new a(it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> g<T> d(@NotNull g<? extends T> gVar) {
        t.j(gVar, "<this>");
        return gVar instanceof kotlin.sequences.a ? gVar : new kotlin.sequences.a(gVar);
    }

    @NotNull
    public static <T> g<T> e() {
        return d.INSTANCE;
    }

    @NotNull
    public static <T> g<T> f(@Nullable T t5, @NotNull e8.l<? super T, ? extends T> nextFunction) {
        t.j(nextFunction, "nextFunction");
        return t5 == null ? d.INSTANCE : new f(new b(t5), nextFunction);
    }

    @NotNull
    public static <T> g<T> g(@NotNull T... elements) {
        t.j(elements, "elements");
        return elements.length == 0 ? e() : kotlin.collections.p.A(elements);
    }
}
