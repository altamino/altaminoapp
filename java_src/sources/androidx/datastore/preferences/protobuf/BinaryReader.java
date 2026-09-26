package androidx.datastore.preferences.protobuf;

import com.google.common.base.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
abstract class BinaryReader implements Reader {
    private static final int FIXED32_MULTIPLE_MASK = 3;
    private static final int FIXED64_MULTIPLE_MASK = 7;

    private static final class SafeHeapReader extends BinaryReader {
        private final byte[] buffer;
        private final boolean bufferIsImmutable;
        private int endGroupTag;
        private final int initialPos;
        private int limit;
        private int pos;
        private int tag;

        public SafeHeapReader(ByteBuffer byteBuffer, boolean z6) {
            super(null);
            this.bufferIsImmutable = z6;
            this.buffer = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            this.pos = iArrayOffset;
            this.initialPos = iArrayOffset;
            this.limit = byteBuffer.arrayOffset() + byteBuffer.limit();
        }

        private void C() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (j() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        private boolean i() {
            return this.pos == this.limit;
        }

        private int m() throws IOException {
            w(4);
            return n();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> T a(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            y(3);
            return (T) l(schema, extensionRegistryLite);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> T b(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            y(2);
            return (T) q(Protobuf.a().d(cls), extensionRegistryLite);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> T c(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            y(2);
            return (T) q(schema, extensionRegistryLite);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> T e(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            y(3);
            return (T) l(Protobuf.a().d(cls), extensionRegistryLite);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.Reader
        public <K, V> void f(Map<K, V> map, MapEntryLite.Metadata<K, V> metadata, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            y(2);
            int iT = t();
            w(iT);
            int i10 = this.limit;
            this.limit = this.pos + iT;
            try {
                Object objK = metadata.defaultKey;
                Object objK2 = metadata.defaultValue;
                while (true) {
                    int fieldNumber = getFieldNumber();
                    if (fieldNumber == Integer.MAX_VALUE) {
                        map.put(objK, objK2);
                        this.limit = i10;
                        return;
                    } else if (fieldNumber == 1) {
                        objK = k(metadata.keyType, null, null);
                    } else if (fieldNumber != 2) {
                        try {
                            if (!skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                            if (!skipField()) {
                                throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            }
                        }
                    } else {
                        objK2 = k(metadata.valueType, metadata.defaultValue.getClass(), extensionRegistryLite);
                    }
                }
            } catch (Throwable th) {
                this.limit = i10;
                throw th;
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int getTag() {
            return this.tag;
        }

        public String r(boolean z6) throws IOException {
            y(2);
            int iT = t();
            if (iT == 0) {
                return "";
            }
            w(iT);
            if (z6) {
                byte[] bArr = this.buffer;
                int i10 = this.pos;
                if (!Utf8.u(bArr, i10, i10 + iT)) {
                    throw InvalidProtocolBufferException.c();
                }
            }
            String str = new String(this.buffer, this.pos, iT, Internal.UTF_8);
            this.pos += iT;
            return str;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public boolean readBool() throws IOException {
            y(0);
            return t() != 0;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public ByteString readBytes() throws IOException {
            y(2);
            int iT = t();
            if (iT == 0) {
                return ByteString.EMPTY;
            }
            w(iT);
            ByteString byteStringL = this.bufferIsImmutable ? ByteString.L(this.buffer, this.pos, iT) : ByteString.p(this.buffer, this.pos, iT);
            this.pos += iT;
            return byteStringL;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public double readDouble() throws IOException {
            y(1);
            return Double.longBitsToDouble(o());
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readEnum() throws IOException {
            y(0);
            return t();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readFixed32() throws IOException {
            y(5);
            return m();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public long readFixed64() throws IOException {
            y(1);
            return o();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public float readFloat() throws IOException {
            y(5);
            return Float.intBitsToFloat(m());
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readInt32() throws IOException {
            y(0);
            return t();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public long readInt64() throws IOException {
            y(0);
            return u();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readSFixed32() throws IOException {
            y(5);
            return m();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public long readSFixed64() throws IOException {
            y(1);
            return o();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readSInt32() throws IOException {
            y(0);
            return CodedInputStream.b(t());
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public long readSInt64() throws IOException {
            y(0);
            return CodedInputStream.c(u());
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public String readString() throws IOException {
            return r(false);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readStringList(List<String> list) throws IOException {
            s(list, false);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readStringListRequireUtf8(List<String> list) throws IOException {
            s(list, true);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public String readStringRequireUtf8() throws IOException {
            return r(true);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int readUInt32() throws IOException {
            y(0);
            return t();
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public long readUInt64() throws IOException {
            y(0);
            return u();
        }

        private void A() throws IOException {
            int i10 = this.endGroupTag;
            this.endGroupTag = WireFormat.c(WireFormat.a(this.tag), 4);
            while (getFieldNumber() != Integer.MAX_VALUE && skipField()) {
            }
            if (this.tag != this.endGroupTag) {
                throw InvalidProtocolBufferException.g();
            }
            this.endGroupTag = i10;
        }

        private void B() throws IOException {
            int i10 = this.limit;
            int i11 = this.pos;
            if (i10 - i11 >= 10) {
                byte[] bArr = this.buffer;
                int i12 = 0;
                while (i12 < 10) {
                    int i13 = i11 + 1;
                    if (bArr[i11] >= 0) {
                        this.pos = i13;
                        return;
                    } else {
                        i12++;
                        i11 = i13;
                    }
                }
            }
            C();
        }

        private byte j() throws IOException {
            int i10 = this.pos;
            if (i10 == this.limit) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            this.pos = i10 + 1;
            return bArr[i10];
        }

        private Object k(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
                case 1:
                    return Boolean.valueOf(readBool());
                case 2:
                    return readBytes();
                case 3:
                    return Double.valueOf(readDouble());
                case 4:
                    return Integer.valueOf(readEnum());
                case 5:
                    return Integer.valueOf(readFixed32());
                case 6:
                    return Long.valueOf(readFixed64());
                case 7:
                    return Float.valueOf(readFloat());
                case 8:
                    return Integer.valueOf(readInt32());
                case 9:
                    return Long.valueOf(readInt64());
                case 10:
                    return b(cls, extensionRegistryLite);
                case 11:
                    return Integer.valueOf(readSFixed32());
                case 12:
                    return Long.valueOf(readSFixed64());
                case 13:
                    return Integer.valueOf(readSInt32());
                case 14:
                    return Long.valueOf(readSInt64());
                case 15:
                    return readStringRequireUtf8();
                case 16:
                    return Integer.valueOf(readUInt32());
                case 17:
                    return Long.valueOf(readUInt64());
                default:
                    throw new RuntimeException("unsupported field type.");
            }
        }

        private <T> T l(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i10 = this.endGroupTag;
            this.endGroupTag = WireFormat.c(WireFormat.a(this.tag), 4);
            try {
                T tNewInstance = schema.newInstance();
                schema.b(tNewInstance, this, extensionRegistryLite);
                schema.makeImmutable(tNewInstance);
                if (this.tag != this.endGroupTag) {
                    throw InvalidProtocolBufferException.g();
                }
                this.endGroupTag = i10;
                return tNewInstance;
            } catch (Throwable th) {
                this.endGroupTag = i10;
                throw th;
            }
        }

        private int n() {
            int i10 = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i10 + 4;
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }

        private long o() throws IOException {
            w(8);
            return p();
        }

        private long p() {
            int i10 = this.pos;
            byte[] bArr = this.buffer;
            this.pos = i10 + 8;
            return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        }

        private int t() throws IOException {
            int i10;
            int i11 = this.pos;
            int i12 = this.limit;
            if (i12 == i11) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            int i13 = i11 + 1;
            byte b7 = bArr[i11];
            if (b7 >= 0) {
                this.pos = i13;
                return b7;
            }
            if (i12 - i13 < 9) {
                return (int) v();
            }
            int i14 = i11 + 2;
            int i15 = (bArr[i13] << 7) ^ b7;
            if (i15 < 0) {
                i10 = i15 ^ (-128);
            } else {
                int i16 = i11 + 3;
                int i17 = (bArr[i14] << c.SO) ^ i15;
                if (i17 >= 0) {
                    i10 = i17 ^ 16256;
                } else {
                    int i18 = i11 + 4;
                    int i19 = i17 ^ (bArr[i16] << c.NAK);
                    if (i19 < 0) {
                        i10 = (-2080896) ^ i19;
                    } else {
                        i16 = i11 + 5;
                        byte b10 = bArr[i18];
                        int i20 = (i19 ^ (b10 << c.FS)) ^ 266354560;
                        if (b10 < 0) {
                            i18 = i11 + 6;
                            if (bArr[i16] < 0) {
                                i16 = i11 + 7;
                                if (bArr[i18] < 0) {
                                    i18 = i11 + 8;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 9;
                                        if (bArr[i18] < 0) {
                                            int i21 = i11 + 10;
                                            if (bArr[i16] < 0) {
                                                throw InvalidProtocolBufferException.e();
                                            }
                                            i14 = i21;
                                            i10 = i20;
                                        }
                                    }
                                }
                            }
                            i10 = i20;
                        }
                        i10 = i20;
                    }
                    i14 = i18;
                }
                i14 = i16;
            }
            this.pos = i14;
            return i10;
        }

        private long v() throws IOException {
            long j6 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte bJ = j();
                j6 |= ((long) (bJ & 127)) << i10;
                if ((bJ & 128) == 0) {
                    return j6;
                }
            }
            throw InvalidProtocolBufferException.e();
        }

        private void w(int i10) throws IOException {
            if (i10 < 0 || i10 > this.limit - this.pos) {
                throw InvalidProtocolBufferException.k();
            }
        }

        private void x(int i10) throws IOException {
            if (this.pos != i10) {
                throw InvalidProtocolBufferException.k();
            }
        }

        private void y(int i10) throws IOException {
            if (WireFormat.b(this.tag) != i10) {
                throw InvalidProtocolBufferException.d();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> void d(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i10;
            if (WireFormat.b(this.tag) != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int i11 = this.tag;
            do {
                list.add(q(schema, extensionRegistryLite));
                if (i()) {
                    return;
                } else {
                    i10 = this.pos;
                }
            } while (t() == i11);
            this.pos = i10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.datastore.preferences.protobuf.Reader
        public <T> void g(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int i10;
            if (WireFormat.b(this.tag) != 3) {
                throw InvalidProtocolBufferException.d();
            }
            int i11 = this.tag;
            do {
                list.add(l(schema, extensionRegistryLite));
                if (i()) {
                    return;
                } else {
                    i10 = this.pos;
                }
            } while (t() == i11);
            this.pos = i10;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readBoolList(List<Boolean> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof BooleanArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB != 0) {
                    if (iB != 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int iT = this.pos + t();
                    while (this.pos < iT) {
                        list.add(Boolean.valueOf(t() != 0));
                    }
                    x(iT);
                    return;
                }
                do {
                    list.add(Boolean.valueOf(readBool()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            BooleanArrayList booleanArrayList = (BooleanArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT2 = this.pos + t();
                while (this.pos < iT2) {
                    booleanArrayList.addBoolean(t() != 0);
                }
                x(iT2);
                return;
            }
            do {
                booleanArrayList.addBoolean(readBool());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readBytesList(List<ByteString> list) throws IOException {
            int i10;
            if (WireFormat.b(this.tag) != 2) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                list.add(readBytes());
                if (i()) {
                    return;
                } else {
                    i10 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i10;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readDoubleList(List<Double> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof DoubleArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 1) {
                    do {
                        list.add(Double.valueOf(readDouble()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = t();
                E(iT);
                int i12 = this.pos + iT;
                while (this.pos < i12) {
                    list.add(Double.valueOf(Double.longBitsToDouble(p())));
                }
                return;
            }
            DoubleArrayList doubleArrayList = (DoubleArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 1) {
                do {
                    doubleArrayList.addDouble(readDouble());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = t();
            E(iT2);
            int i13 = this.pos + iT2;
            while (this.pos < i13) {
                doubleArrayList.addDouble(Double.longBitsToDouble(p()));
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readEnumList(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB != 0) {
                    if (iB != 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int iT = this.pos + t();
                    while (this.pos < iT) {
                        list.add(Integer.valueOf(t()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readEnum()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT2 = this.pos + t();
                while (this.pos < iT2) {
                    intArrayList.addInt(t());
                }
                return;
            }
            do {
                intArrayList.addInt(readEnum());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readFixed32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 2) {
                    int iT = t();
                    D(iT);
                    int i12 = this.pos + iT;
                    while (this.pos < i12) {
                        list.add(Integer.valueOf(n()));
                    }
                    return;
                }
                if (iB != 5) {
                    throw InvalidProtocolBufferException.d();
                }
                do {
                    list.add(Integer.valueOf(readFixed32()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 2) {
                int iT2 = t();
                D(iT2);
                int i13 = this.pos + iT2;
                while (this.pos < i13) {
                    intArrayList.addInt(n());
                }
                return;
            }
            if (iB2 != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                intArrayList.addInt(readFixed32());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readFixed64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof LongArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 1) {
                    do {
                        list.add(Long.valueOf(readFixed64()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = t();
                E(iT);
                int i12 = this.pos + iT;
                while (this.pos < i12) {
                    list.add(Long.valueOf(p()));
                }
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 1) {
                do {
                    longArrayList.addLong(readFixed64());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = t();
            E(iT2);
            int i13 = this.pos + iT2;
            while (this.pos < i13) {
                longArrayList.addLong(p());
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readFloatList(List<Float> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof FloatArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 2) {
                    int iT = t();
                    D(iT);
                    int i12 = this.pos + iT;
                    while (this.pos < i12) {
                        list.add(Float.valueOf(Float.intBitsToFloat(n())));
                    }
                    return;
                }
                if (iB != 5) {
                    throw InvalidProtocolBufferException.d();
                }
                do {
                    list.add(Float.valueOf(readFloat()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            FloatArrayList floatArrayList = (FloatArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 2) {
                int iT2 = t();
                D(iT2);
                int i13 = this.pos + iT2;
                while (this.pos < i13) {
                    floatArrayList.addFloat(Float.intBitsToFloat(n()));
                }
                return;
            }
            if (iB2 != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                floatArrayList.addFloat(readFloat());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 0) {
                    do {
                        list.add(Integer.valueOf(readInt32()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = this.pos + t();
                while (this.pos < iT) {
                    list.add(Integer.valueOf(t()));
                }
                x(iT);
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 0) {
                do {
                    intArrayList.addInt(readInt32());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = this.pos + t();
            while (this.pos < iT2) {
                intArrayList.addInt(t());
            }
            x(iT2);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof LongArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 0) {
                    do {
                        list.add(Long.valueOf(readInt64()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = this.pos + t();
                while (this.pos < iT) {
                    list.add(Long.valueOf(u()));
                }
                x(iT);
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 0) {
                do {
                    longArrayList.addLong(readInt64());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = this.pos + t();
            while (this.pos < iT2) {
                longArrayList.addLong(u());
            }
            x(iT2);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readSFixed32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 2) {
                    int iT = t();
                    D(iT);
                    int i12 = this.pos + iT;
                    while (this.pos < i12) {
                        list.add(Integer.valueOf(n()));
                    }
                    return;
                }
                if (iB != 5) {
                    throw InvalidProtocolBufferException.d();
                }
                do {
                    list.add(Integer.valueOf(readSFixed32()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 2) {
                int iT2 = t();
                D(iT2);
                int i13 = this.pos + iT2;
                while (this.pos < i13) {
                    intArrayList.addInt(n());
                }
                return;
            }
            if (iB2 != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                intArrayList.addInt(readSFixed32());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readSFixed64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof LongArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 1) {
                    do {
                        list.add(Long.valueOf(readSFixed64()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = t();
                E(iT);
                int i12 = this.pos + iT;
                while (this.pos < i12) {
                    list.add(Long.valueOf(p()));
                }
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 1) {
                do {
                    longArrayList.addLong(readSFixed64());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = t();
            E(iT2);
            int i13 = this.pos + iT2;
            while (this.pos < i13) {
                longArrayList.addLong(p());
            }
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readSInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB != 0) {
                    if (iB != 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int iT = this.pos + t();
                    while (this.pos < iT) {
                        list.add(Integer.valueOf(CodedInputStream.b(t())));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readSInt32()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT2 = this.pos + t();
                while (this.pos < iT2) {
                    intArrayList.addInt(CodedInputStream.b(t()));
                }
                return;
            }
            do {
                intArrayList.addInt(readSInt32());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readSInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof LongArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB != 0) {
                    if (iB != 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int iT = this.pos + t();
                    while (this.pos < iT) {
                        list.add(Long.valueOf(CodedInputStream.c(u())));
                    }
                    return;
                }
                do {
                    list.add(Long.valueOf(readSInt64()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT2 = this.pos + t();
                while (this.pos < iT2) {
                    longArrayList.addLong(CodedInputStream.c(u()));
                }
                return;
            }
            do {
                longArrayList.addLong(readSInt64());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readUInt32List(List<Integer> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof IntArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB != 0) {
                    if (iB != 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int iT = this.pos + t();
                    while (this.pos < iT) {
                        list.add(Integer.valueOf(t()));
                    }
                    return;
                }
                do {
                    list.add(Integer.valueOf(readUInt32()));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            IntArrayList intArrayList = (IntArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 != 0) {
                if (iB2 != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT2 = this.pos + t();
                while (this.pos < iT2) {
                    intArrayList.addInt(t());
                }
                return;
            }
            do {
                intArrayList.addInt(readUInt32());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public void readUInt64List(List<Long> list) throws IOException {
            int i10;
            int i11;
            if (!(list instanceof LongArrayList)) {
                int iB = WireFormat.b(this.tag);
                if (iB == 0) {
                    do {
                        list.add(Long.valueOf(readUInt64()));
                        if (i()) {
                            return;
                        } else {
                            i10 = this.pos;
                        }
                    } while (t() == this.tag);
                    this.pos = i10;
                    return;
                }
                if (iB != 2) {
                    throw InvalidProtocolBufferException.d();
                }
                int iT = this.pos + t();
                while (this.pos < iT) {
                    list.add(Long.valueOf(u()));
                }
                x(iT);
                return;
            }
            LongArrayList longArrayList = (LongArrayList) list;
            int iB2 = WireFormat.b(this.tag);
            if (iB2 == 0) {
                do {
                    longArrayList.addLong(readUInt64());
                    if (i()) {
                        return;
                    } else {
                        i11 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i11;
                return;
            }
            if (iB2 != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iT2 = this.pos + t();
            while (this.pos < iT2) {
                longArrayList.addLong(u());
            }
            x(iT2);
        }

        public void s(List<String> list, boolean z6) throws IOException {
            int i10;
            int i11;
            if (WireFormat.b(this.tag) != 2) {
                throw InvalidProtocolBufferException.d();
            }
            if (!(list instanceof LazyStringList) || z6) {
                do {
                    list.add(r(z6));
                    if (i()) {
                        return;
                    } else {
                        i10 = this.pos;
                    }
                } while (t() == this.tag);
                this.pos = i10;
                return;
            }
            LazyStringList lazyStringList = (LazyStringList) list;
            do {
                lazyStringList.h(readBytes());
                if (i()) {
                    return;
                } else {
                    i11 = this.pos;
                }
            } while (t() == this.tag);
            this.pos = i11;
        }

        public long u() throws IOException {
            long j6;
            long j10;
            long j11;
            int i10 = this.pos;
            int i11 = this.limit;
            if (i11 == i10) {
                throw InvalidProtocolBufferException.k();
            }
            byte[] bArr = this.buffer;
            int i12 = i10 + 1;
            byte b7 = bArr[i10];
            if (b7 >= 0) {
                this.pos = i12;
                return b7;
            }
            if (i11 - i12 < 9) {
                return v();
            }
            int i13 = i10 + 2;
            int i14 = (bArr[i12] << 7) ^ b7;
            if (i14 < 0) {
                j6 = i14 ^ (-128);
            } else {
                int i15 = i10 + 3;
                int i16 = (bArr[i13] << c.SO) ^ i14;
                if (i16 >= 0) {
                    j6 = i16 ^ 16256;
                    i13 = i15;
                } else {
                    int i17 = i10 + 4;
                    int i18 = i16 ^ (bArr[i15] << c.NAK);
                    if (i18 < 0) {
                        long j12 = (-2080896) ^ i18;
                        i13 = i17;
                        j6 = j12;
                    } else {
                        long j13 = i18;
                        i13 = i10 + 5;
                        long j14 = j13 ^ (((long) bArr[i17]) << 28);
                        if (j14 >= 0) {
                            j11 = 266354560;
                        } else {
                            int i19 = i10 + 6;
                            long j15 = j14 ^ (((long) bArr[i13]) << 35);
                            if (j15 < 0) {
                                j10 = -34093383808L;
                            } else {
                                i13 = i10 + 7;
                                j14 = j15 ^ (((long) bArr[i19]) << 42);
                                if (j14 >= 0) {
                                    j11 = 4363953127296L;
                                } else {
                                    i19 = i10 + 8;
                                    j15 = j14 ^ (((long) bArr[i13]) << 49);
                                    if (j15 < 0) {
                                        j10 = -558586000294016L;
                                    } else {
                                        i13 = i10 + 9;
                                        long j16 = (j15 ^ (((long) bArr[i19]) << 56)) ^ 71499008037633920L;
                                        if (j16 < 0) {
                                            int i20 = i10 + 10;
                                            if (bArr[i13] < 0) {
                                                throw InvalidProtocolBufferException.e();
                                            }
                                            i13 = i20;
                                        }
                                        j6 = j16;
                                    }
                                }
                            }
                            j6 = j15 ^ j10;
                            i13 = i19;
                        }
                        j6 = j14 ^ j11;
                    }
                }
            }
            this.pos = i13;
            return j6;
        }

        private void D(int i10) throws IOException {
            w(i10);
            if ((i10 & 3) == 0) {
            } else {
                throw InvalidProtocolBufferException.g();
            }
        }

        private void E(int i10) throws IOException {
            w(i10);
            if ((i10 & 7) == 0) {
            } else {
                throw InvalidProtocolBufferException.g();
            }
        }

        private <T> T q(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            int iT = t();
            w(iT);
            int i10 = this.limit;
            int i11 = this.pos + iT;
            this.limit = i11;
            try {
                T tNewInstance = schema.newInstance();
                schema.b(tNewInstance, this, extensionRegistryLite);
                schema.makeImmutable(tNewInstance);
                if (this.pos == i11) {
                    this.limit = i10;
                    return tNewInstance;
                }
                throw InvalidProtocolBufferException.g();
            } catch (Throwable th) {
                this.limit = i10;
                throw th;
            }
        }

        private void z(int i10) throws IOException {
            w(i10);
            this.pos += i10;
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public int getFieldNumber() throws IOException {
            if (i()) {
                return Integer.MAX_VALUE;
            }
            int iT = t();
            this.tag = iT;
            if (iT == this.endGroupTag) {
                return Integer.MAX_VALUE;
            }
            return WireFormat.a(iT);
        }

        @Override // androidx.datastore.preferences.protobuf.Reader
        public boolean skipField() throws IOException {
            int i10;
            if (!i() && (i10 = this.tag) != this.endGroupTag) {
                int iB = WireFormat.b(i10);
                if (iB != 0) {
                    if (iB != 1) {
                        if (iB != 2) {
                            if (iB != 3) {
                                if (iB == 5) {
                                    z(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.d();
                            }
                            A();
                            return true;
                        }
                        z(t());
                        return true;
                    }
                    z(8);
                    return true;
                }
                B();
                return true;
            }
            return false;
        }
    }

    /* synthetic */ BinaryReader(AnonymousClass1 anonymousClass1) {
        this();
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.BinaryReader$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private BinaryReader() {
    }

    public static BinaryReader h(ByteBuffer byteBuffer, boolean z6) {
        if (byteBuffer.hasArray()) {
            return new SafeHeapReader(byteBuffer, z6);
        }
        throw new IllegalArgumentException("Direct buffers not yet supported");
    }
}
