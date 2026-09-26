package com.google.firebase.components;

/* JADX INFO: loaded from: classes4.dex */
public final class s {
    private final g0<?> anInterface;
    private final int injection;
    private final int type;

    private s(Class<?> cls, int i10, int i11) {
        this((g0<?>) g0.b(cls), i10, i11);
    }

    public g0<?> c() {
        return this.anInterface;
    }

    public boolean d() {
        return this.injection == 2;
    }

    public boolean e() {
        return this.injection == 0;
    }

    public boolean f() {
        return this.type == 1;
    }

    public boolean g() {
        return this.type == 2;
    }

    private s(g0<?> g0Var, int i10, int i11) {
        this.anInterface = (g0) f0.c(g0Var, "Null dependency anInterface.");
        this.type = i10;
        this.injection = i11;
    }

    public static s a(Class<?> cls) {
        return new s(cls, 0, 2);
    }

    private static String b(int i10) {
        if (i10 == 0) {
            return "direct";
        }
        if (i10 == 1) {
            return "provider";
        }
        if (i10 == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i10);
    }

    @Deprecated
    public static s h(Class<?> cls) {
        return new s(cls, 0, 0);
    }

    public static s i(Class<?> cls) {
        return new s(cls, 0, 1);
    }

    public static s j(g0<?> g0Var) {
        return new s(g0Var, 1, 0);
    }

    public static s k(Class<?> cls) {
        return new s(cls, 1, 0);
    }

    public static s l(g0<?> g0Var) {
        return new s(g0Var, 1, 1);
    }

    public static s m(Class<?> cls) {
        return new s(cls, 1, 1);
    }

    public static s n(Class<?> cls) {
        return new s(cls, 2, 0);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.anInterface.equals(sVar.anInterface) && this.type == sVar.type && this.injection == sVar.injection;
    }

    public int hashCode() {
        return ((((this.anInterface.hashCode() ^ 1000003) * 1000003) ^ this.type) * 1000003) ^ this.injection;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.anInterface);
        sb.append(", type=");
        int i10 = this.type;
        if (i10 == 1) {
            str = "required";
        } else {
            str = i10 == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        sb.append(b(this.injection));
        sb.append("}");
        return sb.toString();
    }
}
