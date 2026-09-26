package com.google.android.datatransport.runtime;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes9.dex */
@AutoValue
abstract class o {

    @AutoValue.Builder
    public static abstract class a {
        public abstract o a();

        abstract a b(f2.b bVar);

        abstract a c(f2.c<?> cVar);

        abstract a d(f2.e<?, byte[]> eVar);

        public abstract a e(p pVar);

        public abstract a f(String str);
    }

    public abstract f2.b b();

    abstract f2.c<?> c();

    abstract f2.e<?, byte[]> e();

    public abstract p f();

    public abstract String g();

    public static a a() {
        return new c.b();
    }

    o() {
    }

    public byte[] d() {
        return e().apply(c().b());
    }
}
