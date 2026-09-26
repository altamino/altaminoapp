package androidx.emoji2.text.flatbuffer;

import w7.i0;

/* JADX INFO: loaded from: classes3.dex */
public class FlexBuffers {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ReadBuf EMPTY_BB = new ArrayReadWriteBuf(new byte[]{0}, 1);
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    public static class Blob extends Sized {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final Blob EMPTY = new Blob(FlexBuffers.EMPTY_BB, 1, 1);

        public static Blob c() {
            return EMPTY;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder a(StringBuilder sb) {
            sb.append(kotlinx.serialization.json.internal.b.STRING);
            sb.append(this.bb.a(this.end, b()));
            sb.append(kotlinx.serialization.json.internal.b.STRING);
            return sb;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            return this.bb.a(this.end, b());
        }

        Blob(ReadBuf readBuf, int i10, int i11) {
            super(readBuf, i10, i11);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }
    }

    public static class Key extends Object {
        private static final Key EMPTY = new Key(FlexBuffers.EMPTY_BB, 0, 0);

        public static Key c() {
            return EMPTY;
        }

        public int hashCode() {
            return this.end ^ this.byteWidth;
        }

        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return key.end == this.end && key.byteWidth == this.byteWidth;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            int i10 = this.end;
            while (this.bb.get(i10) != 0) {
                i10++;
            }
            int i11 = this.end;
            return this.bb.a(i11, i10 - i11);
        }

        Key(ReadBuf readBuf, int i10, int i11) {
            super(readBuf, i10, i11);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder a(StringBuilder sb) {
            sb.append(toString());
            return sb;
        }
    }

    public static class KeyVector {
        private final TypedVector vec;

        public int b() {
            return this.vec.b();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
            for (int i10 = 0; i10 < this.vec.b(); i10++) {
                this.vec.d(i10).q(sb);
                if (i10 != this.vec.b() - 1) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            return sb.toString();
        }

        KeyVector(TypedVector typedVector) {
            this.vec = typedVector;
        }

        public Key a(int i10) {
            if (i10 >= b()) {
                return Key.EMPTY;
            }
            TypedVector typedVector = this.vec;
            int i11 = typedVector.end + (i10 * typedVector.byteWidth);
            TypedVector typedVector2 = this.vec;
            ReadBuf readBuf = typedVector2.bb;
            return new Key(readBuf, FlexBuffers.g(readBuf, i11, typedVector2.byteWidth), 1);
        }
    }

    public static class Map extends Vector {
        private static final Map EMPTY_MAP = new Map(FlexBuffers.EMPTY_BB, 1, 1);

        public static Map e() {
            return EMPTY_MAP;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder a(StringBuilder sb) {
            sb.append("{ ");
            KeyVector keyVectorF = f();
            int iB = b();
            Vector vectorG = g();
            for (int i10 = 0; i10 < iB; i10++) {
                sb.append(kotlinx.serialization.json.internal.b.STRING);
                sb.append(keyVectorF.a(i10).toString());
                sb.append("\" : ");
                sb.append(vectorG.d(i10).toString());
                if (i10 != iB - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" }");
            return sb;
        }

        public KeyVector f() {
            int i10 = this.end - (this.byteWidth * 3);
            ReadBuf readBuf = this.bb;
            int iG = FlexBuffers.g(readBuf, i10, this.byteWidth);
            ReadBuf readBuf2 = this.bb;
            int i11 = this.byteWidth;
            return new KeyVector(new TypedVector(readBuf, iG, FlexBuffers.j(readBuf2, i10 + i11, i11), 4));
        }

        public Vector g() {
            return new Vector(this.bb, this.end, this.byteWidth);
        }

        Map(ReadBuf readBuf, int i10, int i11) {
            super(readBuf, i10, i11);
        }
    }

    private static abstract class Object {
        ReadBuf bb;
        int byteWidth;
        int end;

        public abstract StringBuilder a(StringBuilder sb);

        public String toString() {
            return a(new StringBuilder(128)).toString();
        }

        Object(ReadBuf readBuf, int i10, int i11) {
            this.bb = readBuf;
            this.end = i10;
            this.byteWidth = i11;
        }
    }

    public static class Reference {
        private static final Reference NULL_REFERENCE = new Reference(FlexBuffers.EMPTY_BB, 0, 1, 0);
        private ReadBuf bb;
        private int byteWidth;
        private int end;
        private int parentWidth;
        private int type;

        Reference(ReadBuf readBuf, int i10, int i11, int i12) {
            this(readBuf, i10, i11, 1 << (i12 & 3), i12 >> 2);
        }

        public boolean k() {
            return this.type == 25;
        }

        public boolean l() {
            return this.type == 26;
        }

        public boolean m() {
            return this.type == 4;
        }

        public boolean n() {
            return this.type == 9;
        }

        public boolean o() {
            return this.type == 5;
        }

        public boolean p() {
            int i10 = this.type;
            return i10 == 10 || i10 == 9;
        }

        Reference(ReadBuf readBuf, int i10, int i11, int i12, int i13) {
            this.bb = readBuf;
            this.end = i10;
            this.parentWidth = i11;
            this.byteWidth = i12;
            this.type = i13;
        }

        public double d() {
            int i10 = this.type;
            if (i10 == 3) {
                return FlexBuffers.i(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 1) {
                return FlexBuffers.j(this.bb, this.end, this.parentWidth);
            }
            if (i10 != 2) {
                if (i10 == 5) {
                    return Double.parseDouble(h());
                }
                if (i10 == 6) {
                    ReadBuf readBuf = this.bb;
                    return FlexBuffers.j(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
                }
                if (i10 == 7) {
                    ReadBuf readBuf2 = this.bb;
                    return FlexBuffers.l(readBuf2, FlexBuffers.g(readBuf2, this.end, this.parentWidth), this.byteWidth);
                }
                if (i10 == 8) {
                    ReadBuf readBuf3 = this.bb;
                    return FlexBuffers.i(readBuf3, FlexBuffers.g(readBuf3, this.end, this.parentWidth), this.byteWidth);
                }
                if (i10 == 10) {
                    return j().b();
                }
                if (i10 != 26) {
                    return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
                }
            }
            return FlexBuffers.l(this.bb, this.end, this.parentWidth);
        }

        public long f() {
            int i10 = this.type;
            if (i10 == 1) {
                return FlexBuffers.k(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 2) {
                return FlexBuffers.l(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 3) {
                return (long) FlexBuffers.i(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 5) {
                try {
                    return Long.parseLong(h());
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            }
            if (i10 == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.k(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i10 == 7) {
                ReadBuf readBuf2 = this.bb;
                return FlexBuffers.l(readBuf2, FlexBuffers.g(readBuf2, this.end, this.parentWidth), this.parentWidth);
            }
            if (i10 == 8) {
                ReadBuf readBuf3 = this.bb;
                return (long) FlexBuffers.i(readBuf3, FlexBuffers.g(readBuf3, this.end, this.parentWidth), this.byteWidth);
            }
            if (i10 == 10) {
                return j().b();
            }
            if (i10 != 26) {
                return 0L;
            }
            return FlexBuffers.j(this.bb, this.end, this.parentWidth);
        }

        public long i() {
            int i10 = this.type;
            if (i10 == 2) {
                return FlexBuffers.l(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 1) {
                return FlexBuffers.k(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 3) {
                return (long) FlexBuffers.i(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 10) {
                return j().b();
            }
            if (i10 == 26) {
                return FlexBuffers.j(this.bb, this.end, this.parentWidth);
            }
            if (i10 == 5) {
                return Long.parseLong(h());
            }
            if (i10 == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.k(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i10 == 7) {
                ReadBuf readBuf2 = this.bb;
                return FlexBuffers.l(readBuf2, FlexBuffers.g(readBuf2, this.end, this.parentWidth), this.byteWidth);
            }
            if (i10 != 8) {
                return 0L;
            }
            ReadBuf readBuf3 = this.bb;
            return (long) FlexBuffers.i(readBuf3, FlexBuffers.g(readBuf3, this.end, this.parentWidth), this.parentWidth);
        }

        StringBuilder q(StringBuilder sb) {
            int i10 = this.type;
            if (i10 != 36) {
                switch (i10) {
                    case 0:
                        sb.append("null");
                        return sb;
                    case 1:
                    case 6:
                        sb.append(f());
                        return sb;
                    case 2:
                    case 7:
                        sb.append(i());
                        return sb;
                    case 3:
                    case 8:
                        sb.append(d());
                        return sb;
                    case 4:
                        Key keyE = e();
                        sb.append(kotlinx.serialization.json.internal.b.STRING);
                        StringBuilder sbA = keyE.a(sb);
                        sbA.append(kotlinx.serialization.json.internal.b.STRING);
                        return sbA;
                    case 5:
                        sb.append(kotlinx.serialization.json.internal.b.STRING);
                        sb.append(h());
                        sb.append(kotlinx.serialization.json.internal.b.STRING);
                        return sb;
                    case 9:
                        return g().a(sb);
                    case 10:
                        return j().a(sb);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.type);
                    case 25:
                        return b().a(sb);
                    case 26:
                        sb.append(c());
                        return sb;
                    default:
                        return sb;
                }
            }
            sb.append(j());
            return sb;
        }

        public String toString() {
            return q(new StringBuilder(128)).toString();
        }

        public Blob b() {
            if (!k() && !o()) {
                return Blob.c();
            }
            ReadBuf readBuf = this.bb;
            return new Blob(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
        }

        public boolean c() {
            if (l()) {
                if (this.bb.get(this.end) == 0) {
                    return false;
                }
                return true;
            }
            if (i() == 0) {
                return false;
            }
            return true;
        }

        public Key e() {
            if (m()) {
                ReadBuf readBuf = this.bb;
                return new Key(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Key.c();
        }

        public Map g() {
            if (n()) {
                ReadBuf readBuf = this.bb;
                return new Map(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Map.e();
        }

        public String h() {
            if (o()) {
                int iG = FlexBuffers.g(this.bb, this.end, this.parentWidth);
                ReadBuf readBuf = this.bb;
                int i10 = this.byteWidth;
                return this.bb.a(iG, (int) FlexBuffers.l(readBuf, iG - i10, i10));
            }
            if (m()) {
                int iG2 = FlexBuffers.g(this.bb, this.end, this.byteWidth);
                int i11 = iG2;
                while (this.bb.get(i11) != 0) {
                    i11++;
                }
                return this.bb.a(iG2, i11 - iG2);
            }
            return "";
        }

        public Vector j() {
            if (p()) {
                ReadBuf readBuf = this.bb;
                return new Vector(readBuf, FlexBuffers.g(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            int i10 = this.type;
            if (i10 == 15) {
                ReadBuf readBuf2 = this.bb;
                return new TypedVector(readBuf2, FlexBuffers.g(readBuf2, this.end, this.parentWidth), this.byteWidth, 4);
            }
            if (FlexBuffers.h(i10)) {
                ReadBuf readBuf3 = this.bb;
                return new TypedVector(readBuf3, FlexBuffers.g(readBuf3, this.end, this.parentWidth), this.byteWidth, FlexBuffers.m(this.type));
            }
            return Vector.c();
        }
    }

    public static class Vector extends Sized {
        private static final Vector EMPTY_VECTOR = new Vector(FlexBuffers.EMPTY_BB, 1, 1);

        public static Vector c() {
            return EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder a(StringBuilder sb) {
            sb.append("[ ");
            int iB = b();
            for (int i10 = 0; i10 < iB; i10++) {
                d(i10).q(sb);
                if (i10 != iB - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" ]");
            return sb;
        }

        Vector(ReadBuf readBuf, int i10, int i11) {
            super(readBuf, i10, i11);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int b() {
            return super.b();
        }

        public Reference d(int i10) {
            long jB = b();
            long j6 = i10;
            if (j6 >= jB) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.bb, this.end + (i10 * this.byteWidth), this.byteWidth, Unsigned.a(this.bb.get((int) (((long) this.end) + (jB * ((long) this.byteWidth)) + j6))));
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(ReadBuf readBuf, int i10, int i11) {
        return (int) (((long) i10) - l(readBuf, i10, i11));
    }

    static boolean h(int i10) {
        return (i10 >= 11 && i10 <= 15) || i10 == 36;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double i(ReadBuf readBuf, int i10, int i11) {
        if (i11 == 4) {
            return readBuf.getFloat(i10);
        }
        if (i11 != 8) {
            return -1.0d;
        }
        return readBuf.getDouble(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long k(ReadBuf readBuf, int i10, int i11) {
        int i12;
        if (i11 == 1) {
            i12 = readBuf.get(i10);
        } else if (i11 == 2) {
            i12 = readBuf.getShort(i10);
        } else {
            if (i11 != 4) {
                if (i11 != 8) {
                    return -1L;
                }
                return readBuf.getLong(i10);
            }
            i12 = readBuf.getInt(i10);
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long l(ReadBuf readBuf, int i10, int i11) {
        if (i11 == 1) {
            return Unsigned.a(readBuf.get(i10));
        }
        if (i11 == 2) {
            return Unsigned.c(readBuf.getShort(i10));
        }
        if (i11 == 4) {
            return Unsigned.b(readBuf.getInt(i10));
        }
        if (i11 != 8) {
            return -1L;
        }
        return readBuf.getLong(i10);
    }

    static int m(int i10) {
        return i10 - 10;
    }

    public static class FlexBufferException extends RuntimeException {
        FlexBufferException(String str) {
            super(str);
        }
    }

    private static abstract class Sized extends Object {
        protected final int size;

        public int b() {
            return this.size;
        }

        Sized(ReadBuf readBuf, int i10, int i11) {
            super(readBuf, i10, i11);
            this.size = FlexBuffers.j(this.bb, i10 - i11, i11);
        }
    }

    public static class TypedVector extends Vector {
        private static final TypedVector EMPTY_VECTOR = new TypedVector(FlexBuffers.EMPTY_BB, 1, 1, 1);
        private final int elemType;

        TypedVector(ReadBuf readBuf, int i10, int i11, int i12) {
            super(readBuf, i10, i11);
            this.elemType = i12;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference d(int i10) {
            if (i10 >= b()) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.bb, this.end + (i10 * this.byteWidth), this.byteWidth, 1, this.elemType);
        }
    }

    static class Unsigned {
        static int a(byte b7) {
            return b7 & 255;
        }

        static long b(int i10) {
            return ((long) i10) & 4294967295L;
        }

        static int c(short s) {
            return s & i0.MAX_VALUE;
        }

        Unsigned() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int j(ReadBuf readBuf, int i10, int i11) {
        return (int) k(readBuf, i10, i11);
    }
}
