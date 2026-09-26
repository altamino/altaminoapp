package kotlin.coroutines;

import e8.p;
import java.io.Serializable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements g, Serializable {

    @NotNull
    private final g.b element;

    @NotNull
    private final g left;

    private static final class a implements Serializable {

        @NotNull
        public static final C0426a Companion = new C0426a(null);
        private static final long serialVersionUID = 0;

        @NotNull
        private final g[] elements;

        /* JADX INFO: renamed from: kotlin.coroutines.c$a$a, reason: collision with other inner class name */
        public static final class C0426a {
            public /* synthetic */ C0426a(k kVar) {
                this();
            }

            private C0426a() {
            }
        }

        public a(@NotNull g[] elements) {
            t.j(elements, "elements");
            this.elements = elements;
        }

        private final Object readResolve() {
            g[] gVarArr = this.elements;
            g gVarPlus = h.INSTANCE;
            for (g gVar : gVarArr) {
                gVarPlus = gVarPlus.plus(gVar);
            }
            return gVarPlus;
        }
    }

    static final class b extends v implements p<String, g.b, String> {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull String acc, @NotNull g.b element) {
            t.j(acc, "acc");
            t.j(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    /* JADX INFO: renamed from: kotlin.coroutines.c$c, reason: collision with other inner class name */
    static final class C0427c extends v implements p<l0, g.b, l0> {
        final /* synthetic */ g[] $elements;
        final /* synthetic */ n0 $index;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0427c(g[] gVarArr, n0 n0Var) {
            super(2);
            this.$elements = gVarArr;
            this.$index = n0Var;
        }

        public final void a(@NotNull l0 l0Var, @NotNull g.b element) {
            t.j(l0Var, "<anonymous parameter 0>");
            t.j(element, "element");
            g[] gVarArr = this.$elements;
            n0 n0Var = this.$index;
            int i10 = n0Var.element;
            n0Var.element = i10 + 1;
            gVarArr[i10] = element;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(l0 l0Var, g.b bVar) {
            a(l0Var, bVar);
            return l0.INSTANCE;
        }
    }

    private final int p() {
        int i10 = 2;
        c cVar = this;
        while (true) {
            g gVar = cVar.left;
            cVar = gVar instanceof c ? (c) gVar : null;
            if (cVar == null) {
                return i10;
            }
            i10++;
        }
    }

    public c(@NotNull g left, @NotNull g.b element) {
        t.j(left, "left");
        t.j(element, "element");
        this.left = left;
        this.element = element;
    }

    private final boolean e(c cVar) {
        while (c(cVar.element)) {
            g gVar = cVar.left;
            if (!(gVar instanceof c)) {
                t.h(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return c((g.b) gVar);
            }
            cVar = (c) gVar;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (cVar.p() != p() || !cVar.e(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super g.b, ? extends R> operation) {
        t.j(operation, "operation");
        return operation.invoke((Object) this.left.fold(r, operation), this.element);
    }

    @Override // kotlin.coroutines.g
    @Nullable
    public <E extends g.b> E get(@NotNull g.c<E> key) {
        t.j(key, "key");
        c cVar = this;
        while (true) {
            E e = (E) cVar.element.get(key);
            if (e != null) {
                return e;
            }
            g gVar = cVar.left;
            if (!(gVar instanceof c)) {
                return (E) gVar.get(key);
            }
            cVar = (c) gVar;
        }
    }

    public int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g minusKey(@NotNull g.c<?> key) {
        t.j(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        g gVarMinusKey = this.left.minusKey(key);
        if (gVarMinusKey == this.left) {
            return this;
        }
        return gVarMinusKey == h.INSTANCE ? this.element : new c(gVarMinusKey, this.element);
    }

    @NotNull
    public String toString() {
        return kotlinx.serialization.json.internal.b.BEGIN_LIST + ((String) fold("", b.INSTANCE)) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    private final boolean c(g.b bVar) {
        return t.e(get(bVar.getKey()), bVar);
    }

    private final Object writeReplace() {
        int iP = p();
        g[] gVarArr = new g[iP];
        n0 n0Var = new n0();
        fold(l0.INSTANCE, new C0427c(gVarArr, n0Var));
        if (n0Var.element == iP) {
            return new a(gVarArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g plus(@NotNull g gVar) {
        return g.a.a(this, gVar);
    }
}
