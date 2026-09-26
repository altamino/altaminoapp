package org.threeten.bp.temporal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes10.dex */
public final class m implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;
    private final long maxLargest;
    private final long maxSmallest;
    private final long minLargest;
    private final long minSmallest;

    public static m j(long j6, long j10, long j11) {
        return k(j6, j6, j10, j11);
    }

    public long c() {
        return this.maxLargest;
    }

    public long d() {
        return this.minSmallest;
    }

    public boolean e() {
        return this.minSmallest == this.minLargest && this.maxSmallest == this.maxLargest;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.minSmallest == mVar.minSmallest && this.minLargest == mVar.minLargest && this.maxSmallest == mVar.maxSmallest && this.maxLargest == mVar.maxLargest;
    }

    public int hashCode() {
        long j6 = this.minSmallest;
        long j10 = this.minLargest;
        long j11 = (j6 + j10) << ((int) (j10 + 16));
        long j12 = this.maxSmallest;
        long j13 = (j11 >> ((int) (j12 + 48))) << ((int) (j12 + 32));
        long j14 = this.maxLargest;
        long j15 = ((j13 >> ((int) (32 + j14))) << ((int) (j14 + 48))) >> 16;
        return (int) (j15 ^ (j15 >>> 32));
    }

    public static m i(long j6, long j10) {
        if (j6 <= j10) {
            return new m(j6, j6, j10, j10);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public static m k(long j6, long j10, long j11, long j12) {
        if (j6 > j10) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        }
        if (j11 > j12) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (j10 <= j12) {
            return new m(j6, j10, j11, j12);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.minSmallest);
        if (this.minSmallest != this.minLargest) {
            sb.append('/');
            sb.append(this.minLargest);
        }
        sb.append(" - ");
        sb.append(this.maxSmallest);
        if (this.maxSmallest != this.maxLargest) {
            sb.append('/');
            sb.append(this.maxLargest);
        }
        return sb.toString();
    }

    private m(long j6, long j10, long j11, long j12) {
        this.minSmallest = j6;
        this.minLargest = j10;
        this.maxSmallest = j11;
        this.maxLargest = j12;
    }

    public int a(long j6, h hVar) {
        if (g(j6)) {
            return (int) j6;
        }
        throw new org.threeten.bp.b("Invalid int value for " + hVar + ": " + j6);
    }

    public long b(long j6, h hVar) {
        if (!h(j6)) {
            if (hVar != null) {
                throw new org.threeten.bp.b("Invalid value for " + hVar + " (valid values " + this + "): " + j6);
            }
            throw new org.threeten.bp.b("Invalid value (valid values " + this + "): " + j6);
        }
        return j6;
    }

    public boolean f() {
        if (d() >= -2147483648L && c() <= 2147483647L) {
            return true;
        }
        return false;
    }

    public boolean g(long j6) {
        if (f() && h(j6)) {
            return true;
        }
        return false;
    }

    public boolean h(long j6) {
        if (j6 >= d() && j6 <= c()) {
            return true;
        }
        return false;
    }
}
