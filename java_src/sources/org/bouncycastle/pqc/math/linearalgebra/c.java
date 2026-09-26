package org.bouncycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes10.dex */
public class c extends n {
    private b field;
    private int[] vector;

    public c(b bVar, byte[] bArr) {
        this.field = new b(bVar);
        int i10 = 8;
        int i11 = 1;
        while (bVar.d() > i10) {
            i11++;
            i10 += 8;
        }
        if (bArr.length % i11 != 0) {
            throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
        }
        int length = bArr.length / i11;
        this.length = length;
        this.vector = new int[length];
        int i12 = 0;
        for (int i13 = 0; i13 < this.vector.length; i13++) {
            int i14 = 0;
            while (i14 < i10) {
                int[] iArr = this.vector;
                iArr[i13] = ((bArr[i12] & 255) << i14) | iArr[i13];
                i14 += 8;
                i12++;
            }
            if (!bVar.i(this.vector[i13])) {
                throw new IllegalArgumentException("Byte array is not an encoded vector over the given finite field.");
            }
        }
    }

    public b a() {
        return this.field;
    }

    public int[] b() {
        return e.a(this.vector);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.field.equals(cVar.field)) {
            return e.b(this.vector, cVar.vector);
        }
        return false;
    }

    public int hashCode() {
        return (this.field.hashCode() * 31) + org.bouncycastle.util.a.p(this.vector);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < this.vector.length; i10++) {
            for (int i11 = 0; i11 < this.field.d(); i11++) {
                stringBuffer.append(((1 << (i11 & 31)) & this.vector[i10]) != 0 ? '1' : '0');
            }
            stringBuffer.append(' ');
        }
        return stringBuffer.toString();
    }

    public c(b bVar, int[] iArr) {
        this.field = bVar;
        this.length = iArr.length;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (!bVar.i(iArr[length])) {
                throw new ArithmeticException("Element array is not specified over the given finite field.");
            }
        }
        this.vector = e.a(iArr);
    }

    public c(c cVar) {
        this.field = new b(cVar.field);
        this.length = cVar.length;
        this.vector = e.a(cVar.vector);
    }
}
