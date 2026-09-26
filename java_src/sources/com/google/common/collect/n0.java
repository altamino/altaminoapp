package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes8.dex */
public abstract class n0<K0, V0> {
    private static final int DEFAULT_EXPECTED_KEYS = 8;

    class a extends e<Object> {
        final /* synthetic */ int val$expectedKeys;

        a(int i10) {
            this.val$expectedKeys = i10;
        }

        @Override // com.google.common.collect.n0.e
        <K, V> Map<K, Collection<V>> c() {
            return u0.c(this.val$expectedKeys);
        }
    }

    class b extends e<K0> {
        final /* synthetic */ Comparator val$comparator;

        b(Comparator comparator) {
            this.val$comparator = comparator;
        }

        @Override // com.google.common.collect.n0.e
        <K extends K0, V> Map<K, Collection<V>> c() {
            return new TreeMap(this.val$comparator);
        }
    }

    private static final class c<V> implements com.google.common.base.u<List<V>>, Serializable {
        private final int expectedValuesPerKey;

        @Override // com.google.common.base.u
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<V> get() {
            return new ArrayList(this.expectedValuesPerKey);
        }

        c(int i10) {
            this.expectedValuesPerKey = k.b(i10, "expectedValuesPerKey");
        }
    }

    public static abstract class d<K0, V0> extends n0<K0, V0> {
        d() {
            super(null);
        }

        public abstract <K extends K0, V extends V0> j0<K, V> e();
    }

    public static abstract class e<K0> {
        private static final int DEFAULT_EXPECTED_VALUES_PER_KEY = 2;

        class a extends d<K0, Object> {
            final /* synthetic */ int val$expectedValuesPerKey;

            a(int i10) {
                this.val$expectedValuesPerKey = i10;
            }

            @Override // com.google.common.collect.n0.d
            public <K extends K0, V> j0<K, V> e() {
                return o0.b(e.this.c(), new c(this.val$expectedValuesPerKey));
            }
        }

        public d<K0, Object> a() {
            return b(2);
        }

        abstract <K extends K0, V> Map<K, Collection<V>> c();

        public d<K0, Object> b(int i10) {
            k.b(i10, "expectedValuesPerKey");
            return new a(i10);
        }

        e() {
        }
    }

    /* synthetic */ n0(a aVar) {
        this();
    }

    private n0() {
    }

    public static e<Object> a() {
        return b(8);
    }

    public static e<Object> b(int i10) {
        k.b(i10, "expectedKeys");
        return new a(i10);
    }

    public static e<Comparable> c() {
        return d(t0.c());
    }

    public static <K0> e<K0> d(Comparator<K0> comparator) {
        com.google.common.base.o.k(comparator);
        return new b(comparator);
    }
}
