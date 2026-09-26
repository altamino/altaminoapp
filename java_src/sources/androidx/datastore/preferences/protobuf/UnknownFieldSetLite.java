package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class UnknownFieldSetLite {
    private static final UnknownFieldSetLite DEFAULT_INSTANCE = new UnknownFieldSetLite(0, new int[0], new Object[0], false);
    private static final int MIN_CAPACITY = 8;
    private int count;
    private boolean isMutable;
    private int memoizedSerializedSize;
    private Object[] objects;
    private int[] tags;

    private UnknownFieldSetLite() {
        this(0, new int[8], new Object[8], true);
    }

    private static boolean c(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static boolean d(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    public static UnknownFieldSetLite e() {
        return DEFAULT_INSTANCE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnknownFieldSetLite)) {
            return false;
        }
        UnknownFieldSetLite unknownFieldSetLite = (UnknownFieldSetLite) obj;
        int i10 = this.count;
        return i10 == unknownFieldSetLite.count && c(this.tags, unknownFieldSetLite.tags, i10) && d(this.objects, unknownFieldSetLite.objects, this.count);
    }

    public void j() {
        this.isMutable = false;
    }

    final void m(StringBuilder sb, int i10) {
        for (int i11 = 0; i11 < this.count; i11++) {
            MessageLiteToString.c(sb, i10, String.valueOf(WireFormat.a(this.tags[i11])), this.objects[i11]);
        }
    }

    private UnknownFieldSetLite(int i10, int[] iArr, Object[] objArr, boolean z6) {
        this.memoizedSerializedSize = -1;
        this.count = i10;
        this.tags = iArr;
        this.objects = objArr;
        this.isMutable = z6;
    }

    private void b() {
        int i10 = this.count;
        int[] iArr = this.tags;
        if (i10 == iArr.length) {
            int i11 = i10 + (i10 < 4 ? 8 : i10 >> 1);
            this.tags = Arrays.copyOf(iArr, i11);
            this.objects = Arrays.copyOf(this.objects, i11);
        }
    }

    private static int h(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private static int i(Object[] objArr, int i10) {
        int iHashCode = 17;
        for (int i11 = 0; i11 < i10; i11++) {
            iHashCode = (iHashCode * 31) + objArr[i11].hashCode();
        }
        return iHashCode;
    }

    static UnknownFieldSetLite k(UnknownFieldSetLite unknownFieldSetLite, UnknownFieldSetLite unknownFieldSetLite2) {
        int i10 = unknownFieldSetLite.count + unknownFieldSetLite2.count;
        int[] iArrCopyOf = Arrays.copyOf(unknownFieldSetLite.tags, i10);
        System.arraycopy(unknownFieldSetLite2.tags, 0, iArrCopyOf, unknownFieldSetLite.count, unknownFieldSetLite2.count);
        Object[] objArrCopyOf = Arrays.copyOf(unknownFieldSetLite.objects, i10);
        System.arraycopy(unknownFieldSetLite2.objects, 0, objArrCopyOf, unknownFieldSetLite.count, unknownFieldSetLite2.count);
        return new UnknownFieldSetLite(i10, iArrCopyOf, objArrCopyOf, true);
    }

    static UnknownFieldSetLite l() {
        return new UnknownFieldSetLite();
    }

    void a() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    public int f() {
        int iG0;
        int i10 = this.memoizedSerializedSize;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.count; i12++) {
            int i13 = this.tags[i12];
            int iA = WireFormat.a(i13);
            int iB = WireFormat.b(i13);
            if (iB == 0) {
                iG0 = CodedOutputStream.g0(iA, ((Long) this.objects[i12]).longValue());
            } else if (iB == 1) {
                iG0 = CodedOutputStream.w(iA, ((Long) this.objects[i12]).longValue());
            } else if (iB == 2) {
                iG0 = CodedOutputStream.o(iA, (ByteString) this.objects[i12]);
            } else if (iB == 3) {
                iG0 = (CodedOutputStream.d0(iA) * 2) + ((UnknownFieldSetLite) this.objects[i12]).f();
            } else {
                if (iB != 5) {
                    throw new IllegalStateException(InvalidProtocolBufferException.d());
                }
                iG0 = CodedOutputStream.u(iA, ((Integer) this.objects[i12]).intValue());
            }
            i11 += iG0;
        }
        this.memoizedSerializedSize = i11;
        return i11;
    }

    public int g() {
        int i10 = this.memoizedSerializedSize;
        if (i10 != -1) {
            return i10;
        }
        int iR = 0;
        for (int i11 = 0; i11 < this.count; i11++) {
            iR += CodedOutputStream.R(WireFormat.a(this.tags[i11]), (ByteString) this.objects[i11]);
        }
        this.memoizedSerializedSize = iR;
        return iR;
    }

    public int hashCode() {
        int i10 = this.count;
        return ((((527 + i10) * 31) + h(this.tags, i10)) * 31) + i(this.objects, this.count);
    }

    public void q(Writer writer) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            for (int i10 = 0; i10 < this.count; i10++) {
                p(this.tags[i10], this.objects[i10], writer);
            }
            return;
        }
        for (int i11 = this.count - 1; i11 >= 0; i11--) {
            p(this.tags[i11], this.objects[i11], writer);
        }
    }

    private static void p(int i10, Object obj, Writer writer) throws IOException {
        int iA = WireFormat.a(i10);
        int iB = WireFormat.b(i10);
        if (iB != 0) {
            if (iB != 1) {
                if (iB != 2) {
                    if (iB != 3) {
                        if (iB == 5) {
                            writer.writeFixed32(iA, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(InvalidProtocolBufferException.d());
                    }
                    if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
                        writer.writeStartGroup(iA);
                        ((UnknownFieldSetLite) obj).q(writer);
                        writer.writeEndGroup(iA);
                        return;
                    } else {
                        writer.writeEndGroup(iA);
                        ((UnknownFieldSetLite) obj).q(writer);
                        writer.writeStartGroup(iA);
                        return;
                    }
                }
                writer.a(iA, (ByteString) obj);
                return;
            }
            writer.writeFixed64(iA, ((Long) obj).longValue());
            return;
        }
        writer.writeInt64(iA, ((Long) obj).longValue());
    }

    void n(int i10, Object obj) {
        a();
        b();
        int[] iArr = this.tags;
        int i11 = this.count;
        iArr[i11] = i10;
        this.objects[i11] = obj;
        this.count = i11 + 1;
    }

    void o(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (int i10 = this.count - 1; i10 >= 0; i10--) {
                writer.writeMessageSetItem(WireFormat.a(this.tags[i10]), this.objects[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.count; i11++) {
            writer.writeMessageSetItem(WireFormat.a(this.tags[i11]), this.objects[i11]);
        }
    }
}
