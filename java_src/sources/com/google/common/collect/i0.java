package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class i0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> extends com.google.common.collect.b<T> {
        final /* synthetic */ com.google.common.base.p val$retainIfTrue;
        final /* synthetic */ Iterator val$unfiltered;

        a(Iterator it, com.google.common.base.p pVar) {
            this.val$unfiltered = it;
            this.val$retainIfTrue = pVar;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.google.common.collect.b
        protected T a() {
            while (this.val$unfiltered.hasNext()) {
                T t5 = (T) this.val$unfiltered.next();
                if (this.val$retainIfTrue.apply(t5)) {
                    return t5;
                }
            }
            return b();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    class b<T> extends l1<T> {
        boolean done;
        final /* synthetic */ Object val$value;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.done;
        }

        b(Object obj) {
            this.val$value = obj;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.done) {
                throw new NoSuchElementException();
            }
            this.done = true;
            return (T) this.val$value;
        }
    }

    private static final class c<T> extends com.google.common.collect.a<T> {
        static final m1<Object> EMPTY = new c(new Object[0], 0, 0, 0);
        private final T[] array;
        private final int offset;

        @Override // com.google.common.collect.a
        protected T a(int i10) {
            return this.array[this.offset + i10];
        }

        c(T[] tArr, int i10, int i11, int i12) {
            super(i11, i12);
            this.array = tArr;
            this.offset = i10;
        }
    }

    private enum d implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            k.c(false);
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }
    }

    public static boolean e(Iterator<?> it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    static <T> m1<T> h() {
        return (m1<T>) c.EMPTY;
    }

    static <T> Iterator<T> i() {
        return d.INSTANCE;
    }

    public static <T> int o(Iterator<T> it, com.google.common.base.p<? super T> pVar) {
        com.google.common.base.o.l(pVar, "predicate");
        int i10 = 0;
        while (it.hasNext()) {
            if (pVar.apply(it.next())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static <T> l1<T> s(T t5) {
        return new b(t5);
    }

    public static String t(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        boolean z6 = true;
        while (it.hasNext()) {
            if (!z6) {
                sb.append(", ");
            }
            sb.append(it.next());
            z6 = false;
        }
        sb.append(kotlinx.serialization.json.internal.b.END_LIST);
        return sb.toString();
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        com.google.common.base.o.k(collection);
        com.google.common.base.o.k(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static int b(Iterator<?> it, int i10) {
        boolean z6;
        com.google.common.base.o.k(it);
        int i11 = 0;
        if (i10 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.common.base.o.e(z6, "numberToAdvance must be nonnegative");
        while (i11 < i10 && it.hasNext()) {
            it.next();
            i11++;
        }
        return i11;
    }

    public static <T> boolean c(Iterator<T> it, com.google.common.base.p<? super T> pVar) {
        if (o(it, pVar) != -1) {
            return true;
        }
        return false;
    }

    static void d(Iterator<?> it) {
        com.google.common.base.o.k(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean f(Iterator<?> it, Iterator<?> it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.common.base.k.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    static <T> l1<T> g() {
        return h();
    }

    public static <T> l1<T> j(Iterator<T> it, com.google.common.base.p<? super T> pVar) {
        com.google.common.base.o.k(it);
        com.google.common.base.o.k(pVar);
        return new a(it, pVar);
    }

    public static <T> T k(Iterator<T> it, com.google.common.base.p<? super T> pVar) {
        com.google.common.base.o.k(it);
        com.google.common.base.o.k(pVar);
        while (it.hasNext()) {
            T next = it.next();
            if (pVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static <T> T l(Iterator<T> it) {
        T next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static <T> T m(Iterator<? extends T> it, T t5) {
        if (it.hasNext()) {
            return (T) l(it);
        }
        return t5;
    }

    public static <T> T n(Iterator<? extends T> it, T t5) {
        if (it.hasNext()) {
            return it.next();
        }
        return t5;
    }

    static <T> T p(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static boolean q(Iterator<?> it, Collection<?> collection) {
        com.google.common.base.o.k(collection);
        boolean z6 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }

    public static <T> boolean r(Iterator<T> it, com.google.common.base.p<? super T> pVar) {
        com.google.common.base.o.k(pVar);
        boolean z6 = false;
        while (it.hasNext()) {
            if (pVar.apply(it.next())) {
                it.remove();
                z6 = true;
            }
        }
        return z6;
    }
}
