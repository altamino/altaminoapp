package androidx.renderscript;

import android.util.Log;
import java.util.BitSet;

/* JADX INFO: loaded from: classes10.dex */
public class FieldPacker {
    private BitSet mAlignment;
    private byte[] mData;
    private int mLen;
    private int mPos;

    public FieldPacker(int i10) {
        this.mPos = 0;
        this.mLen = i10;
        this.mData = new byte[i10];
        this.mAlignment = new BitSet();
    }

    static FieldPacker createFieldPack(Object[] objArr) {
        int packedSize = 0;
        for (Object obj : objArr) {
            packedSize += getPackedSize(obj);
        }
        FieldPacker fieldPacker = new FieldPacker(packedSize);
        for (Object obj2 : objArr) {
            addToPack(fieldPacker, obj2);
        }
        return fieldPacker;
    }

    public void addBoolean(boolean z6) {
        addI8(z6 ? (byte) 1 : (byte) 0);
    }

    public void addF32(float f) {
        addI32(Float.floatToRawIntBits(f));
    }

    public void addF64(double d) {
        addI64(Double.doubleToRawLongBits(d));
    }

    public void addI16(short s) {
        align(2);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        bArr[i10] = (byte) (s & 255);
        this.mPos = i10 + 2;
        bArr[i10 + 1] = (byte) (s >> 8);
    }

    public void addI32(int i10) {
        align(4);
        byte[] bArr = this.mData;
        int i11 = this.mPos;
        bArr[i11] = (byte) (i10 & 255);
        bArr[i11 + 1] = (byte) ((i10 >> 8) & 255);
        bArr[i11 + 2] = (byte) ((i10 >> 16) & 255);
        this.mPos = i11 + 4;
        bArr[i11 + 3] = (byte) ((i10 >> 24) & 255);
    }

    public void addI64(long j6) {
        align(8);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        bArr[i10] = (byte) (j6 & 255);
        bArr[i10 + 1] = (byte) ((j6 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((j6 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((j6 >> 24) & 255);
        bArr[i10 + 4] = (byte) ((j6 >> 32) & 255);
        bArr[i10 + 5] = (byte) ((j6 >> 40) & 255);
        bArr[i10 + 6] = (byte) ((j6 >> 48) & 255);
        this.mPos = i10 + 8;
        bArr[i10 + 7] = (byte) ((j6 >> 56) & 255);
    }

    public void addI8(byte b7) {
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        this.mPos = i10 + 1;
        bArr[i10] = b7;
    }

    public void addMatrix(Matrix4f matrix4f) {
        int i10 = 0;
        while (true) {
            float[] fArr = matrix4f.mMat;
            if (i10 >= fArr.length) {
                return;
            }
            addF32(fArr[i10]);
            i10++;
        }
    }

    public void addU16(int i10) {
        if (i10 < 0 || i10 > 65535) {
            Log.e("rs", "FieldPacker.addU16( " + i10 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(2);
        byte[] bArr = this.mData;
        int i11 = this.mPos;
        bArr[i11] = (byte) (i10 & 255);
        this.mPos = i11 + 2;
        bArr[i11 + 1] = (byte) (i10 >> 8);
    }

    public void addU32(long j6) {
        if (j6 < 0 || j6 > 4294967295L) {
            Log.e("rs", "FieldPacker.addU32( " + j6 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(4);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        bArr[i10] = (byte) (j6 & 255);
        bArr[i10 + 1] = (byte) ((j6 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((j6 >> 16) & 255);
        this.mPos = i10 + 4;
        bArr[i10 + 3] = (byte) ((j6 >> 24) & 255);
    }

    public void addU64(long j6) {
        if (j6 < 0) {
            Log.e("rs", "FieldPacker.addU64( " + j6 + " )");
            throw new IllegalArgumentException("Saving value out of range for type");
        }
        align(8);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        bArr[i10] = (byte) (j6 & 255);
        bArr[i10 + 1] = (byte) ((j6 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((j6 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((j6 >> 24) & 255);
        bArr[i10 + 4] = (byte) ((j6 >> 32) & 255);
        bArr[i10 + 5] = (byte) ((j6 >> 40) & 255);
        bArr[i10 + 6] = (byte) ((j6 >> 48) & 255);
        this.mPos = i10 + 8;
        bArr[i10 + 7] = (byte) ((j6 >> 56) & 255);
    }

    public void addU8(short s) {
        if (s >= 0 && s <= 255) {
            byte[] bArr = this.mData;
            int i10 = this.mPos;
            this.mPos = i10 + 1;
            bArr[i10] = (byte) s;
            return;
        }
        Log.e("rs", "FieldPacker.addU8( " + ((int) s) + " )");
        throw new IllegalArgumentException("Saving value out of range for type");
    }

    public final byte[] getData() {
        return this.mData;
    }

    public int getPos() {
        return this.mPos;
    }

    public void reset() {
        this.mPos = 0;
    }

    public short subI16() {
        subalign(2);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        short s = (short) ((bArr[i10 - 1] & 255) << 8);
        int i11 = i10 - 2;
        this.mPos = i11;
        return (short) (((short) (bArr[i11] & 255)) | s);
    }

    public int subI32() {
        subalign(4);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        int i11 = ((bArr[i10 - 1] & 255) << 24) | ((bArr[i10 - 2] & 255) << 16) | ((bArr[i10 - 3] & 255) << 8);
        int i12 = i10 - 4;
        this.mPos = i12;
        return (bArr[i12] & 255) | i11;
    }

    public byte subI8() {
        subalign(1);
        byte[] bArr = this.mData;
        int i10 = this.mPos - 1;
        this.mPos = i10;
        return bArr[i10];
    }

    private void addSafely(Object obj) {
        int i10 = this.mPos;
        while (true) {
            try {
                addToPack(this, obj);
                return;
            } catch (ArrayIndexOutOfBoundsException unused) {
                this.mPos = i10;
                resize(this.mLen * 2);
            }
        }
    }

    private static void addToPack(FieldPacker fieldPacker, Object obj) {
        if (obj instanceof Boolean) {
            fieldPacker.addBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof Byte) {
            fieldPacker.addI8(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Short) {
            fieldPacker.addI16(((Short) obj).shortValue());
            return;
        }
        if (obj instanceof Integer) {
            fieldPacker.addI32(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            fieldPacker.addI64(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            fieldPacker.addF32(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            fieldPacker.addF64(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Byte2) {
            fieldPacker.addI8((Byte2) obj);
            return;
        }
        if (obj instanceof Byte3) {
            fieldPacker.addI8((Byte3) obj);
            return;
        }
        if (obj instanceof Byte4) {
            fieldPacker.addI8((Byte4) obj);
            return;
        }
        if (obj instanceof Short2) {
            fieldPacker.addI16((Short2) obj);
            return;
        }
        if (obj instanceof Short3) {
            fieldPacker.addI16((Short3) obj);
            return;
        }
        if (obj instanceof Short4) {
            fieldPacker.addI16((Short4) obj);
            return;
        }
        if (obj instanceof Int2) {
            fieldPacker.addI32((Int2) obj);
            return;
        }
        if (obj instanceof Int3) {
            fieldPacker.addI32((Int3) obj);
            return;
        }
        if (obj instanceof Int4) {
            fieldPacker.addI32((Int4) obj);
            return;
        }
        if (obj instanceof Long2) {
            fieldPacker.addI64((Long2) obj);
            return;
        }
        if (obj instanceof Long3) {
            fieldPacker.addI64((Long3) obj);
            return;
        }
        if (obj instanceof Long4) {
            fieldPacker.addI64((Long4) obj);
            return;
        }
        if (obj instanceof Float2) {
            fieldPacker.addF32((Float2) obj);
            return;
        }
        if (obj instanceof Float3) {
            fieldPacker.addF32((Float3) obj);
            return;
        }
        if (obj instanceof Float4) {
            fieldPacker.addF32((Float4) obj);
            return;
        }
        if (obj instanceof Double2) {
            fieldPacker.addF64((Double2) obj);
            return;
        }
        if (obj instanceof Double3) {
            fieldPacker.addF64((Double3) obj);
            return;
        }
        if (obj instanceof Double4) {
            fieldPacker.addF64((Double4) obj);
            return;
        }
        if (obj instanceof Matrix2f) {
            fieldPacker.addMatrix((Matrix2f) obj);
            return;
        }
        if (obj instanceof Matrix3f) {
            fieldPacker.addMatrix((Matrix3f) obj);
        } else if (obj instanceof Matrix4f) {
            fieldPacker.addMatrix((Matrix4f) obj);
        } else if (obj instanceof BaseObj) {
            fieldPacker.addObj((BaseObj) obj);
        }
    }

    static FieldPacker createFromArray(Object[] objArr) {
        FieldPacker fieldPacker = new FieldPacker(RenderScript.sPointerSize * 8);
        for (Object obj : objArr) {
            fieldPacker.addSafely(obj);
        }
        fieldPacker.resize(fieldPacker.mPos);
        return fieldPacker;
    }

    private static int getPackedSize(Object obj) {
        if ((obj instanceof Boolean) || (obj instanceof Byte)) {
            return 1;
        }
        if (obj instanceof Short) {
            return 2;
        }
        if (obj instanceof Integer) {
            return 4;
        }
        if (obj instanceof Long) {
            return 8;
        }
        if (obj instanceof Float) {
            return 4;
        }
        if (obj instanceof Double) {
            return 8;
        }
        if (obj instanceof Byte2) {
            return 2;
        }
        if (obj instanceof Byte3) {
            return 3;
        }
        if ((obj instanceof Byte4) || (obj instanceof Short2)) {
            return 4;
        }
        if (obj instanceof Short3) {
            return 6;
        }
        if ((obj instanceof Short4) || (obj instanceof Int2)) {
            return 8;
        }
        if (obj instanceof Int3) {
            return 12;
        }
        if ((obj instanceof Int4) || (obj instanceof Long2)) {
            return 16;
        }
        if (obj instanceof Long3) {
            return 24;
        }
        if (obj instanceof Long4) {
            return 32;
        }
        if (obj instanceof Float2) {
            return 8;
        }
        if (obj instanceof Float3) {
            return 12;
        }
        if ((obj instanceof Float4) || (obj instanceof Double2)) {
            return 16;
        }
        if (obj instanceof Double3) {
            return 24;
        }
        if (obj instanceof Double4) {
            return 32;
        }
        if (obj instanceof Matrix2f) {
            return 16;
        }
        if (obj instanceof Matrix3f) {
            return 36;
        }
        if (obj instanceof Matrix4f) {
            return 64;
        }
        if (obj instanceof BaseObj) {
            return RenderScript.sPointerSize == 8 ? 32 : 4;
        }
        return 0;
    }

    private boolean resize(int i10) {
        if (i10 == this.mLen) {
            return false;
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(this.mData, 0, bArr, 0, this.mPos);
        this.mData = bArr;
        this.mLen = i10;
        return true;
    }

    public void addF32(Float2 float2) {
        addF32(float2.f785x);
        addF32(float2.f786y);
    }

    public void addF64(Double2 double2) {
        addF64(double2.f776x);
        addF64(double2.f777y);
    }

    public void addI8(Byte2 byte2) {
        addI8(byte2.f767x);
        addI8(byte2.f768y);
    }

    public void addObj(BaseObj baseObj) {
        if (baseObj != null) {
            if (RenderScript.sPointerSize != 8) {
                addI32((int) baseObj.getID(null));
                return;
            }
            addI64(baseObj.getID(null));
            addI64(0L);
            addI64(0L);
            addI64(0L);
            return;
        }
        if (RenderScript.sPointerSize != 8) {
            addI32(0);
            return;
        }
        addI64(0L);
        addI64(0L);
        addI64(0L);
        addI64(0L);
    }

    public void align(int i10) {
        if (i10 > 0) {
            int i11 = i10 - 1;
            if ((i10 & i11) == 0) {
                while (true) {
                    int i12 = this.mPos;
                    if ((i12 & i11) == 0) {
                        return;
                    }
                    this.mAlignment.flip(i12);
                    byte[] bArr = this.mData;
                    int i13 = this.mPos;
                    this.mPos = i13 + 1;
                    bArr[i13] = 0;
                }
            }
        }
        throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i10);
    }

    public void reset(int i10) {
        if (i10 >= 0 && i10 <= this.mLen) {
            this.mPos = i10;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i10);
    }

    public void skip(int i10) {
        int i11 = this.mPos + i10;
        if (i11 >= 0 && i11 <= this.mLen) {
            this.mPos = i11;
            return;
        }
        throw new RSIllegalArgumentException("out of range argument: " + i10);
    }

    public Byte2 subByte2() {
        Byte2 byte2 = new Byte2();
        byte2.f768y = subI8();
        byte2.f767x = subI8();
        return byte2;
    }

    public Byte3 subByte3() {
        Byte3 byte3 = new Byte3();
        byte3.f771z = subI8();
        byte3.f770y = subI8();
        byte3.f769x = subI8();
        return byte3;
    }

    public Byte4 subByte4() {
        Byte4 byte4 = new Byte4();
        byte4.f772w = subI8();
        byte4.f775z = subI8();
        byte4.f774y = subI8();
        byte4.f773x = subI8();
        return byte4;
    }

    public Double2 subDouble2() {
        Double2 double2 = new Double2();
        double2.f777y = subF64();
        double2.f776x = subF64();
        return double2;
    }

    public Double3 subDouble3() {
        Double3 double3 = new Double3();
        double3.f780z = subF64();
        double3.f779y = subF64();
        double3.f778x = subF64();
        return double3;
    }

    public Double4 subDouble4() {
        Double4 double4 = new Double4();
        double4.f781w = subF64();
        double4.f784z = subF64();
        double4.f783y = subF64();
        double4.f782x = subF64();
        return double4;
    }

    public Float2 subFloat2() {
        Float2 float2 = new Float2();
        float2.f786y = subF32();
        float2.f785x = subF32();
        return float2;
    }

    public Float3 subFloat3() {
        Float3 float3 = new Float3();
        float3.f789z = subF32();
        float3.f788y = subF32();
        float3.f787x = subF32();
        return float3;
    }

    public Float4 subFloat4() {
        Float4 float4 = new Float4();
        float4.f790w = subF32();
        float4.f793z = subF32();
        float4.f792y = subF32();
        float4.f791x = subF32();
        return float4;
    }

    public long subI64() {
        subalign(8);
        byte[] bArr = this.mData;
        int i10 = this.mPos;
        long j6 = ((((long) bArr[i10 - 1]) & 255) << 56) | ((((long) bArr[i10 - 2]) & 255) << 48) | ((((long) bArr[i10 - 3]) & 255) << 40) | ((((long) bArr[i10 - 4]) & 255) << 32) | ((((long) bArr[i10 - 5]) & 255) << 24) | ((((long) bArr[i10 - 6]) & 255) << 16) | ((((long) bArr[i10 - 7]) & 255) << 8);
        int i11 = i10 - 8;
        this.mPos = i11;
        return (((long) bArr[i11]) & 255) | j6;
    }

    public Int2 subInt2() {
        Int2 int2 = new Int2();
        int2.f795y = subI32();
        int2.f794x = subI32();
        return int2;
    }

    public Int3 subInt3() {
        Int3 int3 = new Int3();
        int3.f798z = subI32();
        int3.f797y = subI32();
        int3.f796x = subI32();
        return int3;
    }

    public Int4 subInt4() {
        Int4 int4 = new Int4();
        int4.f799w = subI32();
        int4.f802z = subI32();
        int4.f801y = subI32();
        int4.f800x = subI32();
        return int4;
    }

    public Long2 subLong2() {
        Long2 long2 = new Long2();
        long2.f804y = subI64();
        long2.f803x = subI64();
        return long2;
    }

    public Long3 subLong3() {
        Long3 long3 = new Long3();
        long3.f807z = subI64();
        long3.f806y = subI64();
        long3.f805x = subI64();
        return long3;
    }

    public Long4 subLong4() {
        Long4 long4 = new Long4();
        long4.f808w = subI64();
        long4.f811z = subI64();
        long4.f810y = subI64();
        long4.f809x = subI64();
        return long4;
    }

    public Matrix2f subMatrix2f() {
        Matrix2f matrix2f = new Matrix2f();
        for (int length = matrix2f.mMat.length - 1; length >= 0; length--) {
            matrix2f.mMat[length] = subF32();
        }
        return matrix2f;
    }

    public Matrix3f subMatrix3f() {
        Matrix3f matrix3f = new Matrix3f();
        for (int length = matrix3f.mMat.length - 1; length >= 0; length--) {
            matrix3f.mMat[length] = subF32();
        }
        return matrix3f;
    }

    public Matrix4f subMatrix4f() {
        Matrix4f matrix4f = new Matrix4f();
        for (int length = matrix4f.mMat.length - 1; length >= 0; length--) {
            matrix4f.mMat[length] = subF32();
        }
        return matrix4f;
    }

    public Short2 subShort2() {
        Short2 short2 = new Short2();
        short2.f813y = subI16();
        short2.f812x = subI16();
        return short2;
    }

    public Short3 subShort3() {
        Short3 short3 = new Short3();
        short3.f816z = subI16();
        short3.f815y = subI16();
        short3.f814x = subI16();
        return short3;
    }

    public Short4 subShort4() {
        Short4 short4 = new Short4();
        short4.f817w = subI16();
        short4.f820z = subI16();
        short4.f819y = subI16();
        short4.f818x = subI16();
        return short4;
    }

    public void subalign(int i10) {
        int i11;
        int i12 = i10 - 1;
        if ((i10 & i12) != 0) {
            throw new RSIllegalArgumentException("argument must be a non-negative non-zero power of 2: " + i10);
        }
        while (true) {
            i11 = this.mPos;
            if ((i11 & i12) == 0) {
                break;
            } else {
                this.mPos = i11 - 1;
            }
        }
        if (i11 > 0) {
            while (this.mAlignment.get(this.mPos - 1)) {
                int i13 = this.mPos - 1;
                this.mPos = i13;
                this.mAlignment.flip(i13);
            }
        }
    }

    public void addMatrix(Matrix3f matrix3f) {
        int i10 = 0;
        while (true) {
            float[] fArr = matrix3f.mMat;
            if (i10 >= fArr.length) {
                return;
            }
            addF32(fArr[i10]);
            i10++;
        }
    }

    public boolean subBoolean() {
        if (subI8() == 1) {
            return true;
        }
        return false;
    }

    public float subF32() {
        return Float.intBitsToFloat(subI32());
    }

    public double subF64() {
        return Double.longBitsToDouble(subI64());
    }

    public FieldPacker(byte[] bArr) {
        this.mPos = bArr.length;
        this.mLen = bArr.length;
        this.mData = bArr;
        this.mAlignment = new BitSet();
    }

    public void addF32(Float3 float3) {
        addF32(float3.f787x);
        addF32(float3.f788y);
        addF32(float3.f789z);
    }

    public void addF64(Double3 double3) {
        addF64(double3.f778x);
        addF64(double3.f779y);
        addF64(double3.f780z);
    }

    public void addI16(Short2 short2) {
        addI16(short2.f812x);
        addI16(short2.f813y);
    }

    public void addI8(Byte3 byte3) {
        addI8(byte3.f769x);
        addI8(byte3.f770y);
        addI8(byte3.f771z);
    }

    public void addU8(Short2 short2) {
        addU8(short2.f812x);
        addU8(short2.f813y);
    }

    public void addMatrix(Matrix2f matrix2f) {
        int i10 = 0;
        while (true) {
            float[] fArr = matrix2f.mMat;
            if (i10 >= fArr.length) {
                return;
            }
            addF32(fArr[i10]);
            i10++;
        }
    }

    public void addI16(Short3 short3) {
        addI16(short3.f814x);
        addI16(short3.f815y);
        addI16(short3.f816z);
    }

    public void addI32(Int2 int2) {
        addI32(int2.f794x);
        addI32(int2.f795y);
    }

    public void addU16(Int2 int2) {
        addU16(int2.f794x);
        addU16(int2.f795y);
    }

    public void addU8(Short3 short3) {
        addU8(short3.f814x);
        addU8(short3.f815y);
        addU8(short3.f816z);
    }

    public void addF32(Float4 float4) {
        addF32(float4.f791x);
        addF32(float4.f792y);
        addF32(float4.f793z);
        addF32(float4.f790w);
    }

    public void addF64(Double4 double4) {
        addF64(double4.f782x);
        addF64(double4.f783y);
        addF64(double4.f784z);
        addF64(double4.f781w);
    }

    public void addI8(Byte4 byte4) {
        addI8(byte4.f773x);
        addI8(byte4.f774y);
        addI8(byte4.f775z);
        addI8(byte4.f772w);
    }

    public void addI32(Int3 int3) {
        addI32(int3.f796x);
        addI32(int3.f797y);
        addI32(int3.f798z);
    }

    public void addU16(Int3 int3) {
        addU16(int3.f796x);
        addU16(int3.f797y);
        addU16(int3.f798z);
    }

    public void addU32(Long2 long2) {
        addU32(long2.f803x);
        addU32(long2.f804y);
    }

    public void addI16(Short4 short4) {
        addI16(short4.f818x);
        addI16(short4.f819y);
        addI16(short4.f820z);
        addI16(short4.f817w);
    }

    public void addU8(Short4 short4) {
        addU8(short4.f818x);
        addU8(short4.f819y);
        addU8(short4.f820z);
        addU8(short4.f817w);
    }

    public void addI64(Long2 long2) {
        addI64(long2.f803x);
        addI64(long2.f804y);
    }

    public void addU32(Long3 long3) {
        addU32(long3.f805x);
        addU32(long3.f806y);
        addU32(long3.f807z);
    }

    public void addI32(Int4 int4) {
        addI32(int4.f800x);
        addI32(int4.f801y);
        addI32(int4.f802z);
        addI32(int4.f799w);
    }

    public void addU16(Int4 int4) {
        addU16(int4.f800x);
        addU16(int4.f801y);
        addU16(int4.f802z);
        addU16(int4.f799w);
    }

    public void addI64(Long3 long3) {
        addI64(long3.f805x);
        addI64(long3.f806y);
        addI64(long3.f807z);
    }

    public void addU64(Long2 long2) {
        addU64(long2.f803x);
        addU64(long2.f804y);
    }

    public void addU32(Long4 long4) {
        addU32(long4.f809x);
        addU32(long4.f810y);
        addU32(long4.f811z);
        addU32(long4.f808w);
    }

    public void addU64(Long3 long3) {
        addU64(long3.f805x);
        addU64(long3.f806y);
        addU64(long3.f807z);
    }

    public void addI64(Long4 long4) {
        addI64(long4.f809x);
        addI64(long4.f810y);
        addI64(long4.f811z);
        addI64(long4.f808w);
    }

    public void addU64(Long4 long4) {
        addU64(long4.f809x);
        addU64(long4.f810y);
        addU64(long4.f811z);
        addU64(long4.f808w);
    }
}
