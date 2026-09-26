package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements Comparable<e>, Serializable {
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int NANOS_PER_SECOND = 1000000000;
    private static final long serialVersionUID = 3078945930695997490L;
    private final int nanos;
    private final long seconds;
    public static final e ZERO = new e(0, 0);
    private static final BigInteger BI_NANOS_PER_SECOND = BigInteger.valueOf(1000000000);
    private static final Pattern PATTERN = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);

    private static e b(long j6, int i10) {
        return (((long) i10) | j6) == 0 ? ZERO : new e(j6, i10);
    }

    public static e e(long j6) {
        return b(j6, 0);
    }

    public long c() {
        return this.seconds;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.seconds == eVar.seconds && this.nanos == eVar.nanos;
    }

    public int hashCode() {
        long j6 = this.seconds;
        return ((int) (j6 ^ (j6 >>> 32))) + (this.nanos * 51);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new o((byte) 1, this);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e eVar) {
        int iB = ra.d.b(this.seconds, eVar.seconds);
        return iB != 0 ? iB : this.nanos - eVar.nanos;
    }

    void i(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    public String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j6 = this.seconds;
        long j10 = j6 / 3600;
        int i10 = (int) ((j6 % 3600) / 60);
        int i11 = (int) (j6 % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j10 != 0) {
            sb.append(j10);
            sb.append('H');
        }
        if (i10 != 0) {
            sb.append(i10);
            sb.append('M');
        }
        if (i11 == 0 && this.nanos == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i11 >= 0 || this.nanos <= 0) {
            sb.append(i11);
        } else if (i11 == -1) {
            sb.append("-0");
        } else {
            sb.append(i11 + 1);
        }
        if (this.nanos > 0) {
            int length = sb.length();
            if (i11 < 0) {
                sb.append(2000000000 - this.nanos);
            } else {
                sb.append(this.nanos + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    private e(long j6, int i10) {
        this.seconds = j6;
        this.nanos = i10;
    }

    public static e d(long j6) {
        long j10 = j6 / 1000000000;
        int i10 = (int) (j6 % 1000000000);
        if (i10 < 0) {
            i10 += 1000000000;
            j10--;
        }
        return b(j10, i10);
    }

    public static e f(long j6, long j10) {
        return b(ra.d.k(j6, ra.d.e(j10, 1000000000L)), ra.d.g(j10, 1000000000));
    }

    static e h(DataInput dataInput) throws IOException {
        return f(dataInput.readLong(), dataInput.readInt());
    }
}
