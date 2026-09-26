package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class f0 {
    private static final Charset UTF_8 = Charset.forName("UTF-8");

    @AutoValue
    public static abstract class a {

        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$a$a, reason: collision with other inner class name */
        @AutoValue
        public static abstract class AbstractC0235a {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$a$a$a, reason: collision with other inner class name */
            @AutoValue.Builder
            public static abstract class AbstractC0236a {
                @NonNull
                public abstract AbstractC0235a a();

                @NonNull
                public abstract AbstractC0236a b(@NonNull String str);

                @NonNull
                public abstract AbstractC0236a c(@NonNull String str);

                @NonNull
                public abstract AbstractC0236a d(@NonNull String str);
            }

            @NonNull
            public abstract String b();

            @NonNull
            public abstract String c();

            @NonNull
            public abstract String d();

            @NonNull
            public static AbstractC0236a a() {
                return new com.google.firebase.crashlytics.internal.model.d.b();
            }
        }

        @AutoValue.Builder
        public static abstract class b {
            @NonNull
            public abstract a a();

            @NonNull
            public abstract b b(@Nullable List<AbstractC0235a> list);

            @NonNull
            public abstract b c(@NonNull int i10);

            @NonNull
            public abstract b d(@NonNull int i10);

            @NonNull
            public abstract b e(@NonNull String str);

            @NonNull
            public abstract b f(@NonNull long j6);

            @NonNull
            public abstract b g(@NonNull int i10);

            @NonNull
            public abstract b h(@NonNull long j6);

            @NonNull
            public abstract b i(@NonNull long j6);

            @NonNull
            public abstract b j(@Nullable String str);
        }

        @Nullable
        public abstract List<AbstractC0235a> b();

        @NonNull
        public abstract int c();

        @NonNull
        public abstract int d();

        @NonNull
        public abstract String e();

        @NonNull
        public abstract long f();

        @NonNull
        public abstract int g();

        @NonNull
        public abstract long h();

        @NonNull
        public abstract long i();

        @Nullable
        public abstract String j();

        @NonNull
        public static b a() {
            return new com.google.firebase.crashlytics.internal.model.c.b();
        }
    }

    @AutoValue.Builder
    public static abstract class b {
        @NonNull
        public abstract f0 a();

        @NonNull
        public abstract b b(a aVar);

        @NonNull
        public abstract b c(@Nullable String str);

        @NonNull
        public abstract b d(@NonNull String str);

        @NonNull
        public abstract b e(@NonNull String str);

        @NonNull
        public abstract b f(@Nullable String str);

        @NonNull
        public abstract b g(@NonNull String str);

        @NonNull
        public abstract b h(@NonNull String str);

        @NonNull
        public abstract b i(d dVar);

        @NonNull
        public abstract b j(int i10);

        @NonNull
        public abstract b k(@NonNull String str);

        @NonNull
        public abstract b l(@NonNull e eVar);
    }

    @AutoValue
    public static abstract class c {

        @AutoValue.Builder
        public static abstract class a {
            @NonNull
            public abstract c a();

            @NonNull
            public abstract a b(@NonNull String str);

            @NonNull
            public abstract a c(@NonNull String str);
        }

        @NonNull
        public abstract String b();

        @NonNull
        public abstract String c();

        @NonNull
        public static a a() {
            return new com.google.firebase.crashlytics.internal.model.e.b();
        }
    }

    @AutoValue
    public static abstract class d {

        @AutoValue.Builder
        public static abstract class a {
            public abstract d a();

            public abstract a b(List<b> list);

            public abstract a c(String str);
        }

        @AutoValue
        public static abstract class b {

            @AutoValue.Builder
            public static abstract class a {
                public abstract b a();

                public abstract a b(byte[] bArr);

                public abstract a c(String str);
            }

            @NonNull
            public abstract byte[] b();

            @NonNull
            public abstract String c();

            @NonNull
            public static a a() {
                return new g.b();
            }
        }

        @NonNull
        public abstract List<b> b();

        @Nullable
        public abstract String c();

        @NonNull
        public static a a() {
            return new f.b();
        }
    }

    @AutoValue
    public static abstract class e {

        @AutoValue
        public static abstract class a {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$a$a, reason: collision with other inner class name */
            @AutoValue.Builder
            public static abstract class AbstractC0237a {
                @NonNull
                public abstract a a();

                @NonNull
                public abstract AbstractC0237a b(@Nullable String str);

                @NonNull
                public abstract AbstractC0237a c(@Nullable String str);

                @NonNull
                public abstract AbstractC0237a d(@NonNull String str);

                @NonNull
                public abstract AbstractC0237a e(@NonNull String str);

                @NonNull
                public abstract AbstractC0237a f(@NonNull String str);

                @NonNull
                public abstract AbstractC0237a g(@NonNull String str);
            }

            @AutoValue
            public static abstract class b {
                @NonNull
                public abstract String a();
            }

            @Nullable
            public abstract String b();

            @Nullable
            public abstract String c();

            @Nullable
            public abstract String d();

            @NonNull
            public abstract String e();

            @Nullable
            public abstract String f();

            @Nullable
            public abstract b g();

            @NonNull
            public abstract String h();

            @NonNull
            public static AbstractC0237a a() {
                return new i.b();
            }
        }

        @AutoValue.Builder
        public static abstract class b {
            @NonNull
            public abstract e a();

            @NonNull
            public abstract b b(@NonNull a aVar);

            @NonNull
            public abstract b c(@Nullable String str);

            @NonNull
            public abstract b d(boolean z6);

            @NonNull
            public abstract b e(@NonNull c cVar);

            @NonNull
            public abstract b f(@NonNull Long l);

            @NonNull
            public abstract b g(@NonNull List<d> list);

            @NonNull
            public abstract b h(@NonNull String str);

            @NonNull
            public abstract b i(int i10);

            @NonNull
            public abstract b j(@NonNull String str);

            @NonNull
            public abstract b l(@NonNull AbstractC0252e abstractC0252e);

            @NonNull
            public abstract b m(long j6);

            @NonNull
            public abstract b n(@NonNull f fVar);

            @NonNull
            public b k(@NonNull byte[] bArr) {
                return j(new String(bArr, f0.UTF_8));
            }
        }

        @AutoValue
        public static abstract class c {

            @AutoValue.Builder
            public static abstract class a {
                @NonNull
                public abstract c a();

                @NonNull
                public abstract a b(int i10);

                @NonNull
                public abstract a c(int i10);

                @NonNull
                public abstract a d(long j6);

                @NonNull
                public abstract a e(@NonNull String str);

                @NonNull
                public abstract a f(@NonNull String str);

                @NonNull
                public abstract a g(@NonNull String str);

                @NonNull
                public abstract a h(long j6);

                @NonNull
                public abstract a i(boolean z6);

                @NonNull
                public abstract a j(int i10);
            }

            @NonNull
            public abstract int b();

            public abstract int c();

            public abstract long d();

            @NonNull
            public abstract String e();

            @NonNull
            public abstract String f();

            @NonNull
            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();

            @NonNull
            public static a a() {
                return new k.b();
            }
        }

        @AutoValue
        public static abstract class d {

            @AutoValue
            public static abstract class a {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$a, reason: collision with other inner class name */
                @AutoValue.Builder
                public static abstract class AbstractC0238a {
                    @NonNull
                    public abstract a a();

                    @NonNull
                    public abstract AbstractC0238a b(@Nullable List<c> list);

                    @NonNull
                    public abstract AbstractC0238a c(@Nullable Boolean bool);

                    @NonNull
                    public abstract AbstractC0238a d(@Nullable c cVar);

                    @NonNull
                    public abstract AbstractC0238a e(@NonNull List<c> list);

                    @NonNull
                    public abstract AbstractC0238a f(@NonNull b bVar);

                    @NonNull
                    public abstract AbstractC0238a g(@NonNull List<c> list);

                    @NonNull
                    public abstract AbstractC0238a h(int i10);
                }

                @AutoValue
                public static abstract class b {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$a, reason: collision with other inner class name */
                    @AutoValue
                    public static abstract class AbstractC0239a {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$a$a, reason: collision with other inner class name */
                        @AutoValue.Builder
                        public static abstract class AbstractC0240a {
                            @NonNull
                            public abstract AbstractC0239a a();

                            @NonNull
                            public abstract AbstractC0240a b(long j6);

                            @NonNull
                            public abstract AbstractC0240a c(@NonNull String str);

                            @NonNull
                            public abstract AbstractC0240a d(long j6);

                            @NonNull
                            public abstract AbstractC0240a e(@Nullable String str);

                            @NonNull
                            public AbstractC0240a f(@NonNull byte[] bArr) {
                                return e(new String(bArr, f0.UTF_8));
                            }
                        }

                        @NonNull
                        public abstract long b();

                        @NonNull
                        public abstract String c();

                        public abstract long d();

                        @Nullable
                        public abstract String e();

                        @NonNull
                        public static AbstractC0240a a() {
                            return new o.b();
                        }

                        @Nullable
                        public byte[] f() {
                            String strE = e();
                            if (strE != null) {
                                return strE.getBytes(f0.UTF_8);
                            }
                            return null;
                        }
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$b, reason: collision with other inner class name */
                    @AutoValue.Builder
                    public static abstract class AbstractC0241b {
                        @NonNull
                        public abstract b a();

                        @NonNull
                        public abstract AbstractC0241b b(@NonNull a aVar);

                        @NonNull
                        public abstract AbstractC0241b c(@NonNull List<AbstractC0239a> list);

                        @NonNull
                        public abstract AbstractC0241b d(@NonNull c cVar);

                        @NonNull
                        public abstract AbstractC0241b e(@NonNull AbstractC0243d abstractC0243d);

                        @NonNull
                        public abstract AbstractC0241b f(@NonNull List<AbstractC0245e> list);
                    }

                    @AutoValue
                    public static abstract class c {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$c$a, reason: collision with other inner class name */
                        @AutoValue.Builder
                        public static abstract class AbstractC0242a {
                            @NonNull
                            public abstract c a();

                            @NonNull
                            public abstract AbstractC0242a b(@NonNull c cVar);

                            @NonNull
                            public abstract AbstractC0242a c(@NonNull List<AbstractC0245e.AbstractC0247b> list);

                            @NonNull
                            public abstract AbstractC0242a d(int i10);

                            @NonNull
                            public abstract AbstractC0242a e(@NonNull String str);

                            @NonNull
                            public abstract AbstractC0242a f(@NonNull String str);
                        }

                        @Nullable
                        public abstract c b();

                        @NonNull
                        public abstract List<AbstractC0245e.AbstractC0247b> c();

                        public abstract int d();

                        @Nullable
                        public abstract String e();

                        @NonNull
                        public abstract String f();

                        @NonNull
                        public static AbstractC0242a a() {
                            return new p.b();
                        }
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$d, reason: collision with other inner class name */
                    @AutoValue
                    public static abstract class AbstractC0243d {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$d$a, reason: collision with other inner class name */
                        @AutoValue.Builder
                        public static abstract class AbstractC0244a {
                            @NonNull
                            public abstract AbstractC0243d a();

                            @NonNull
                            public abstract AbstractC0244a b(long j6);

                            @NonNull
                            public abstract AbstractC0244a c(@NonNull String str);

                            @NonNull
                            public abstract AbstractC0244a d(@NonNull String str);
                        }

                        @NonNull
                        public abstract long b();

                        @NonNull
                        public abstract String c();

                        @NonNull
                        public abstract String d();

                        @NonNull
                        public static AbstractC0244a a() {
                            return new q.b();
                        }
                    }

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$e, reason: collision with other inner class name */
                    @AutoValue
                    public static abstract class AbstractC0245e {

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$e$a, reason: collision with other inner class name */
                        @AutoValue.Builder
                        public static abstract class AbstractC0246a {
                            @NonNull
                            public abstract AbstractC0245e a();

                            @NonNull
                            public abstract AbstractC0246a b(@NonNull List<AbstractC0247b> list);

                            @NonNull
                            public abstract AbstractC0246a c(int i10);

                            @NonNull
                            public abstract AbstractC0246a d(@NonNull String str);
                        }

                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$e$b, reason: collision with other inner class name */
                        @AutoValue
                        public static abstract class AbstractC0247b {

                            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$b$e$b$a, reason: collision with other inner class name */
                            @AutoValue.Builder
                            public static abstract class AbstractC0248a {
                                @NonNull
                                public abstract AbstractC0247b a();

                                @NonNull
                                public abstract AbstractC0248a b(@NonNull String str);

                                @NonNull
                                public abstract AbstractC0248a c(int i10);

                                @NonNull
                                public abstract AbstractC0248a d(long j6);

                                @NonNull
                                public abstract AbstractC0248a e(long j6);

                                @NonNull
                                public abstract AbstractC0248a f(@NonNull String str);
                            }

                            @Nullable
                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            @NonNull
                            public abstract String f();

                            @NonNull
                            public static AbstractC0248a a() {
                                return new s.b();
                            }
                        }

                        @NonNull
                        public abstract List<AbstractC0247b> b();

                        public abstract int c();

                        @NonNull
                        public abstract String d();

                        @NonNull
                        public static AbstractC0246a a() {
                            return new r.b();
                        }
                    }

                    @Nullable
                    public abstract a b();

                    @NonNull
                    public abstract List<AbstractC0239a> c();

                    @Nullable
                    public abstract c d();

                    @NonNull
                    public abstract AbstractC0243d e();

                    @Nullable
                    public abstract List<AbstractC0245e> f();

                    @NonNull
                    public static AbstractC0241b a() {
                        return new n.b();
                    }
                }

                @AutoValue
                public static abstract class c {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$a$c$a, reason: collision with other inner class name */
                    @AutoValue.Builder
                    public static abstract class AbstractC0249a {
                        @NonNull
                        public abstract c a();

                        @NonNull
                        public abstract AbstractC0249a b(boolean z6);

                        @NonNull
                        public abstract AbstractC0249a c(int i10);

                        @NonNull
                        public abstract AbstractC0249a d(int i10);

                        @NonNull
                        public abstract AbstractC0249a e(@NonNull String str);
                    }

                    public abstract int b();

                    public abstract int c();

                    @NonNull
                    public abstract String d();

                    public abstract boolean e();

                    @NonNull
                    public static AbstractC0249a a() {
                        return new t.b();
                    }
                }

                @Nullable
                public abstract List<c> b();

                @Nullable
                public abstract Boolean c();

                @Nullable
                public abstract c d();

                @Nullable
                public abstract List<c> e();

                @NonNull
                public abstract b f();

                @Nullable
                public abstract List<c> g();

                public abstract int h();

                @NonNull
                public abstract AbstractC0238a i();

                @NonNull
                public static AbstractC0238a a() {
                    return new m.b();
                }
            }

            @AutoValue.Builder
            public static abstract class b {
                @NonNull
                public abstract d a();

                @NonNull
                public abstract b b(@NonNull a aVar);

                @NonNull
                public abstract b c(@NonNull c cVar);

                @NonNull
                public abstract b d(@NonNull AbstractC0250d abstractC0250d);

                @Nullable
                public abstract b e(@NonNull f fVar);

                @NonNull
                public abstract b f(long j6);

                @NonNull
                public abstract b g(@NonNull String str);
            }

            @AutoValue
            public static abstract class c {

                @AutoValue.Builder
                public static abstract class a {
                    @NonNull
                    public abstract c a();

                    @NonNull
                    public abstract a b(Double d);

                    @NonNull
                    public abstract a c(int i10);

                    @NonNull
                    public abstract a d(long j6);

                    @NonNull
                    public abstract a e(int i10);

                    @NonNull
                    public abstract a f(boolean z6);

                    @NonNull
                    public abstract a g(long j6);
                }

                @Nullable
                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();

                @NonNull
                public static a a() {
                    return new u.b();
                }
            }

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$d, reason: collision with other inner class name */
            @AutoValue
            public static abstract class AbstractC0250d {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$d$a */
                @AutoValue.Builder
                public static abstract class a {
                    @NonNull
                    public abstract AbstractC0250d a();

                    @NonNull
                    public abstract a b(@NonNull String str);
                }

                @NonNull
                public abstract String b();

                @NonNull
                public static a a() {
                    return new v.b();
                }
            }

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$e, reason: collision with other inner class name */
            @AutoValue
            public static abstract class AbstractC0251e {

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$e$a */
                @AutoValue.Builder
                public static abstract class a {
                    @NonNull
                    public abstract AbstractC0251e a();

                    @NonNull
                    public abstract a b(@NonNull String str);

                    @NonNull
                    public abstract a c(@NonNull String str);

                    @NonNull
                    public abstract a d(@NonNull b bVar);

                    @NonNull
                    public abstract a e(@NonNull long j6);
                }

                /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$e$b */
                @AutoValue
                public static abstract class b {

                    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$d$e$b$a */
                    @AutoValue.Builder
                    public static abstract class a {
                        @NonNull
                        public abstract b a();

                        @NonNull
                        public abstract a b(@NonNull String str);

                        @NonNull
                        public abstract a c(@NonNull String str);
                    }

                    @NonNull
                    public abstract String b();

                    @NonNull
                    public abstract String c();

                    public static a a() {
                        return new x.b();
                    }
                }

                @NonNull
                public abstract String b();

                @NonNull
                public abstract String c();

                @NonNull
                public abstract b d();

                @NonNull
                public abstract long e();

                @NonNull
                public static a a() {
                    return new w.b();
                }
            }

            @AutoValue
            public static abstract class f {

                @AutoValue.Builder
                public static abstract class a {
                    @NonNull
                    public abstract f a();

                    @NonNull
                    public abstract a b(@Nullable List<AbstractC0251e> list);
                }

                @NonNull
                public abstract List<AbstractC0251e> b();

                @NonNull
                public static a a() {
                    return new y.b();
                }
            }

            @NonNull
            public abstract a b();

            @NonNull
            public abstract c c();

            @Nullable
            public abstract AbstractC0250d d();

            @Nullable
            public abstract f e();

            public abstract long f();

            @NonNull
            public abstract String g();

            @NonNull
            public abstract b h();

            @NonNull
            public static b a() {
                return new l.b();
            }
        }

        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$e, reason: collision with other inner class name */
        @AutoValue
        public static abstract class AbstractC0252e {

            /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.model.f0$e$e$a */
            @AutoValue.Builder
            public static abstract class a {
                @NonNull
                public abstract AbstractC0252e a();

                @NonNull
                public abstract a b(@NonNull String str);

                @NonNull
                public abstract a c(boolean z6);

                @NonNull
                public abstract a d(int i10);

                @NonNull
                public abstract a e(@NonNull String str);
            }

            @NonNull
            public abstract String b();

            public abstract int c();

            @NonNull
            public abstract String d();

            public abstract boolean e();

            @NonNull
            public static a a() {
                return new z.b();
            }
        }

        @AutoValue
        public static abstract class f {

            @AutoValue.Builder
            public static abstract class a {
                @NonNull
                public abstract f a();

                @NonNull
                public abstract a b(@NonNull String str);
            }

            @NonNull
            public abstract String b();

            @NonNull
            public static a a() {
                return new a0.b();
            }
        }

        @NonNull
        public abstract a b();

        @Nullable
        public abstract String c();

        @Nullable
        public abstract c d();

        @Nullable
        public abstract Long e();

        @Nullable
        public abstract List<d> f();

        @NonNull
        public abstract String g();

        public abstract int h();

        @NonNull
        public abstract String i();

        @Nullable
        public abstract AbstractC0252e k();

        public abstract long l();

        @Nullable
        public abstract f m();

        public abstract boolean n();

        @NonNull
        public abstract b o();

        @NonNull
        public static b a() {
            return new h.b().d(false);
        }

        @NonNull
        public byte[] j() {
            return i().getBytes(f0.UTF_8);
        }

        @NonNull
        e p(@Nullable String str) {
            return o().c(str).a();
        }

        @NonNull
        e q(@NonNull List<d> list) {
            return o().g(list).a();
        }

        @NonNull
        e r(long j6, boolean z6, @Nullable String str) {
            b bVarO = o();
            bVarO.f(Long.valueOf(j6));
            bVarO.d(z6);
            if (str != null) {
                bVarO.n(f.a().b(str).a());
            }
            return bVarO.a();
        }
    }

    @Nullable
    public abstract a c();

    @Nullable
    public abstract String d();

    @NonNull
    public abstract String e();

    @NonNull
    public abstract String f();

    @Nullable
    public abstract String g();

    @NonNull
    public abstract String h();

    @NonNull
    public abstract String i();

    @Nullable
    public abstract d j();

    public abstract int k();

    @NonNull
    public abstract String l();

    @Nullable
    public abstract e m();

    @NonNull
    protected abstract b n();

    @NonNull
    public static b b() {
        return new com.google.firebase.crashlytics.internal.model.b.C0234b();
    }

    @NonNull
    public f0 p(a aVar) {
        return aVar == null ? this : n().b(aVar).a();
    }

    @NonNull
    public f0 o(@Nullable String str) {
        b bVarC = n().c(str);
        if (m() != null) {
            bVarC.l(m().p(str));
        }
        return bVarC.a();
    }

    @NonNull
    public f0 q(@NonNull List<e.d> list) {
        if (m() != null) {
            return n().l(m().q(list)).a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    @NonNull
    public f0 r(@Nullable String str) {
        return n().f(str).a();
    }

    @NonNull
    public f0 s(@NonNull d dVar) {
        return n().l(null).i(dVar).a();
    }

    @NonNull
    public f0 t(long j6, boolean z6, @Nullable String str) {
        b bVarN = n();
        if (m() != null) {
            bVarN.l(m().r(j6, z6, str));
        }
        return bVarN.a();
    }
}
