package org.a.a;

/* loaded from: classes4.dex */
public class a implements d {
    public final int a;
    public final int b;

    public a(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // org.a.a.d
    public final int a() {
        return this.a;
    }

    @Override // org.a.a.d
    public final int b() {
        return this.b;
    }

    @Override // org.a.a.d
    public final int c() {
        return (this.b - this.a) + 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.a == dVar.a() && this.b == dVar.b();
    }

    public int hashCode() {
        return (this.a % 100) + (this.b % 100);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (!(obj instanceof d)) {
            return -1;
        }
        d dVar = (d) obj;
        int iA = this.a - dVar.a();
        return iA != 0 ? iA : this.b - dVar.b();
    }

    public String toString() {
        return this.a + ":" + this.b;
    }
}
