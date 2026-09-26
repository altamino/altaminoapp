package com.google.firebase.crashlytics.internal.model;

import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes6.dex */
@AutoValue
public abstract class g0 {

    @AutoValue
    public static abstract class a {
        public abstract String a();

        public abstract int c();

        public abstract com.google.firebase.crashlytics.internal.f d();

        public abstract String e();

        public abstract String f();

        public abstract String g();

        public static a b(String str, String str2, String str3, String str4, int i10, com.google.firebase.crashlytics.internal.f fVar) {
            return new c0(str, str2, str3, str4, i10, fVar);
        }
    }

    @AutoValue
    public static abstract class b {
        public abstract int a();

        public abstract int b();

        public abstract long d();

        public abstract boolean e();

        public abstract String f();

        public abstract String g();

        public abstract String h();

        public abstract int i();

        public abstract long j();

        public static b c(int i10, String str, int i11, long j6, long j10, boolean z6, int i12, String str2, String str3) {
            return new d0(i10, str, i11, j6, j10, z6, i12, str2, str3);
        }
    }

    @AutoValue
    public static abstract class c {
        public abstract boolean b();

        public abstract String c();

        public abstract String d();

        public static c a(String str, String str2, boolean z6) {
            return new e0(str, str2, z6);
        }
    }

    public abstract a a();

    public abstract b c();

    public abstract c d();

    public static g0 b(a aVar, c cVar, b bVar) {
        return new b0(aVar, cVar, bVar);
    }
}
