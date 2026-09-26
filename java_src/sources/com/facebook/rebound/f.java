package com.facebook.rebound;

/* JADX INFO: loaded from: classes8.dex */
public class f {
    public static f defaultConfig = a(40.0d, 7.0d);
    public double friction;
    public double tension;

    public static f a(double d, double d2) {
        return new f(c.b(d), c.a(d2));
    }

    public f(double d, double d2) {
        this.tension = d;
        this.friction = d2;
    }
}
