package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes7.dex */
public class u extends z {
    private static final long LONG_LIMIT = 72057594037927808L;
    static final m0 TYPE = new a(u.class, 6);
    private static final ConcurrentMap<b, u> pool = new ConcurrentHashMap();
    private byte[] contents;
    private final String identifier;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return u.x(r1Var.z(), false);
        }
    }

    private static class b {
        private final byte[] contents;
        private final int key;

        b(byte[] bArr) {
            this.key = org.bouncycastle.util.a.m(bArr);
            this.contents = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return org.bouncycastle.util.a.a(this.contents, ((b) obj).contents);
            }
            return false;
        }

        public int hashCode() {
            return this.key;
        }
    }

    public u(String str) {
        if (str == null) {
            throw new NullPointerException("'identifier' cannot be null");
        }
        if (D(str)) {
            this.identifier = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not an OID");
    }

    public static u B(Object obj) {
        if (obj == null || (obj instanceof u)) {
            return (u) obj;
        }
        if (obj instanceof f) {
            z zVarG = ((f) obj).g();
            if (zVarG instanceof u) {
                return (u) zVarG;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (u) TYPE.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    private static boolean D(String str) {
        char cCharAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2') {
            return false;
        }
        return b0.A(str, 2);
    }

    static u x(byte[] bArr, boolean z6) {
        u uVar = pool.get(new b(bArr));
        return uVar == null ? new u(bArr, z6) : uVar;
    }

    private void y(ByteArrayOutputStream byteArrayOutputStream) {
        w2 w2Var = new w2(this.identifier);
        int i10 = Integer.parseInt(w2Var.b()) * 40;
        String strB = w2Var.b();
        if (strB.length() <= 18) {
            b0.B(byteArrayOutputStream, ((long) i10) + Long.parseLong(strB));
        } else {
            b0.C(byteArrayOutputStream, new BigInteger(strB).add(BigInteger.valueOf(i10)));
        }
        while (w2Var.a()) {
            String strB2 = w2Var.b();
            if (strB2.length() <= 18) {
                b0.B(byteArrayOutputStream, Long.parseLong(strB2));
            } else {
                b0.C(byteArrayOutputStream, new BigInteger(strB2));
            }
        }
    }

    private synchronized byte[] z() {
        try {
            if (this.contents == null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                y(byteArrayOutputStream);
                this.contents = byteArrayOutputStream.toByteArray();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.contents;
    }

    public String A() {
        return this.identifier;
    }

    public u C() {
        b bVar = new b(z());
        ConcurrentMap<b, u> concurrentMap = pool;
        u uVar = concurrentMap.get(bVar);
        if (uVar != null) {
            return uVar;
        }
        u uVarPutIfAbsent = concurrentMap.putIfAbsent(bVar, this);
        return uVarPutIfAbsent == null ? this : uVarPutIfAbsent;
    }

    public boolean E(u uVar) {
        String strA = A();
        String strA2 = uVar.A();
        return strA.length() > strA2.length() && strA.charAt(strA2.length()) == '.' && strA.startsWith(strA2);
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar == this) {
            return true;
        }
        if (zVar instanceof u) {
            return this.identifier.equals(((u) zVar).identifier);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return this.identifier.hashCode();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 6, z());
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, z().length);
    }

    public String toString() {
        return A();
    }

    public u w(String str) {
        return new u(this, str);
    }

    u(u uVar, String str) {
        if (!b0.A(str, 0)) {
            throw new IllegalArgumentException("string " + str + " not a valid OID branch");
        }
        this.identifier = uVar.A() + "." + str;
    }

    u(byte[] bArr, boolean z6) {
        int i10;
        byte[] bArr2 = bArr;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        BigInteger bigIntegerShiftLeft = null;
        int i11 = 0;
        long j6 = 0;
        while (i11 != bArr2.length) {
            byte b7 = bArr2[i11];
            if (j6 <= LONG_LIMIT) {
                i10 = i11;
                long j10 = j6 + ((long) (b7 & 127));
                if ((b7 & 128) == 0) {
                    if (z10) {
                        if (j10 < 40) {
                            stringBuffer.append('0');
                        } else if (j10 < 80) {
                            stringBuffer.append('1');
                            j10 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j10 -= 80;
                        }
                        z10 = false;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(j10);
                    j6 = 0;
                } else {
                    j6 = j10 << 7;
                }
            } else {
                i10 = i11;
                BigInteger bigIntegerOr = (bigIntegerShiftLeft == null ? BigInteger.valueOf(j6) : bigIntegerShiftLeft).or(BigInteger.valueOf(b7 & 127));
                if ((b7 & 128) == 0) {
                    if (z10) {
                        stringBuffer.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z10 = false;
                    }
                    stringBuffer.append('.');
                    stringBuffer.append(bigIntegerOr);
                    bigIntegerShiftLeft = null;
                    j6 = 0;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
            i11 = i10 + 1;
        }
        this.identifier = stringBuffer.toString();
        this.contents = z6 ? org.bouncycastle.util.a.e(bArr) : bArr2;
    }
}
