package l9;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class a0 {

    private static class a extends ObjectInputStream {
        private static final Set components;
        private boolean found;
        private final Class mainClass;

        static {
            HashSet hashSet = new HashSet();
            components = hashSet;
            hashSet.add("java.util.TreeMap");
            hashSet.add("java.lang.Integer");
            hashSet.add("java.lang.Number");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDS");
            hashSet.add("java.util.ArrayList");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.XMSSNode");
            hashSet.add("[B");
            hashSet.add("java.util.LinkedList");
            hashSet.add("java.util.Stack");
            hashSet.add("java.util.Vector");
            hashSet.add("[Ljava.lang.Object;");
            hashSet.add("org.bouncycastle.pqc.crypto.xmss.BDSTreeHash");
        }

        a(Class cls, InputStream inputStream) throws IOException {
            super(inputStream);
            this.found = false;
            this.mainClass = cls;
        }

        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            if (this.found) {
                if (!components.contains(objectStreamClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
            } else {
                if (!objectStreamClass.getName().equals(this.mainClass.getName())) {
                    throw new InvalidClassException("unexpected class: ", objectStreamClass.getName());
                }
                this.found = true;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    public static long a(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        long j6 = 0;
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            j6 = (j6 << 8) | ((long) (bArr[i12] & 255));
        }
        return j6;
    }

    public static int b(int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (((i10 >> i12) & 1) == 0) {
                return i12;
            }
        }
        return 0;
    }

    public static byte[] c(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("in == null");
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[][] d(byte[][] bArr) {
        if (k(bArr)) {
            throw new NullPointerException("in has null pointers");
        }
        byte[][] bArr2 = new byte[bArr.length][];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte[] bArr3 = new byte[bArr[i10].length];
            bArr2[i10] = bArr3;
            byte[] bArr4 = bArr[i10];
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
        }
        return bArr2;
    }

    public static void e(byte[] bArr, byte[] bArr2, int i10) {
        if (bArr == null) {
            throw new NullPointerException("dst == null");
        }
        if (bArr2 == null) {
            throw new NullPointerException("src == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (bArr2.length + i10 > bArr.length) {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
        for (int i11 = 0; i11 < bArr2.length; i11++) {
            bArr[i10 + i11] = bArr2[i11];
        }
    }

    public static Object f(byte[] bArr, Class cls) throws ClassNotFoundException, IOException {
        a aVar = new a(cls, new ByteArrayInputStream(bArr));
        Object object = aVar.readObject();
        if (aVar.available() != 0) {
            throw new IOException("unexpected data found at end of ObjectInputStream");
        }
        if (cls.isInstance(object)) {
            return object;
        }
        throw new IOException("unexpected class found in ObjectInputStream");
    }

    public static byte[] g(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new NullPointerException("src == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("length hast to be >= 0");
        }
        if (i10 + i11 > bArr.length) {
            throw new IllegalArgumentException("offset + length must not be greater then size of source array");
        }
        byte[] bArr2 = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            bArr2[i12] = bArr[i10 + i12];
        }
        return bArr2;
    }

    public static int h(x8.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("digest == null");
        }
        String strD = cVar.d();
        if (strD.equals(p.SHAKE128)) {
            return 32;
        }
        if (strD.equals(p.SHAKE256)) {
            return 64;
        }
        return cVar.e();
    }

    public static int i(long j6, int i10) {
        return (int) (j6 & ((1 << i10) - 1));
    }

    public static long j(long j6, int i10) {
        return j6 >> i10;
    }

    public static boolean k(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(int i10, long j6) {
        if (j6 >= 0) {
            return j6 < (1 << i10);
        }
        throw new IllegalStateException("index must not be negative");
    }

    public static boolean m(long j6, int i10, int i11) {
        return j6 != 0 && (j6 + 1) % ((long) Math.pow((double) (1 << i10), (double) i11)) == 0;
    }

    public static boolean n(long j6, int i10, int i11) {
        return j6 != 0 && j6 % ((long) Math.pow((double) (1 << i10), (double) (i11 + 1))) == 0;
    }

    public static int o(int i10) {
        int i11 = 0;
        while (true) {
            i10 >>= 1;
            if (i10 == 0) {
                return i11;
            }
            i11++;
        }
    }

    public static byte[] p(Object obj) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        objectOutputStream.writeObject(obj);
        objectOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] q(long j6, int i10) {
        byte[] bArr = new byte[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            bArr[i11] = (byte) j6;
            j6 >>>= 8;
        }
        return bArr;
    }
}
