package com.google.common.collect;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {
    private static final p ACTIVE = new a();
    private static final p LESS = new b(-1);
    private static final p GREATER = new b(1);

    class a extends p {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.p
        public int i() {
            return 0;
        }

        p k(int i10) {
            if (i10 < 0) {
                return p.LESS;
            }
            return i10 > 0 ? p.GREATER : p.ACTIVE;
        }

        @Override // com.google.common.collect.p
        public p d(int i10, int i11) {
            return k(com.google.common.primitives.e.e(i10, i11));
        }

        @Override // com.google.common.collect.p
        public p e(long j6, long j10) {
            return k(com.google.common.primitives.g.a(j6, j10));
        }

        @Override // com.google.common.collect.p
        public <T> p f(T t5, T t10, Comparator<T> comparator) {
            return k(comparator.compare(t5, t10));
        }

        @Override // com.google.common.collect.p
        public p g(boolean z6, boolean z10) {
            return k(com.google.common.primitives.a.a(z6, z10));
        }

        @Override // com.google.common.collect.p
        public p h(boolean z6, boolean z10) {
            return k(com.google.common.primitives.a.a(z10, z6));
        }
    }

    private static final class b extends p {
        final int result;

        b(int i10) {
            super(null);
            this.result = i10;
        }

        @Override // com.google.common.collect.p
        public p d(int i10, int i11) {
            return this;
        }

        @Override // com.google.common.collect.p
        public p e(long j6, long j10) {
            return this;
        }

        @Override // com.google.common.collect.p
        public <T> p f(T t5, T t10, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.p
        public p g(boolean z6, boolean z10) {
            return this;
        }

        @Override // com.google.common.collect.p
        public p h(boolean z6, boolean z10) {
            return this;
        }

        @Override // com.google.common.collect.p
        public int i() {
            return this.result;
        }
    }

    /* synthetic */ p(a aVar) {
        this();
    }

    public static p j() {
        return ACTIVE;
    }

    public abstract p d(int i10, int i11);

    public abstract p e(long j6, long j10);

    public abstract <T> p f(T t5, T t10, Comparator<T> comparator);

    public abstract p g(boolean z6, boolean z10);

    public abstract p h(boolean z6, boolean z10);

    public abstract int i();

    private p() {
    }
}
