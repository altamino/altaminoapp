package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class CodedInputStreamReader implements Reader {
    private static final int FIXED32_MULTIPLE_MASK = 3;
    private static final int FIXED64_MULTIPLE_MASK = 7;
    private static final int NEXT_TAG_UNSET = 0;
    private int endGroupTag;
    private final CodedInputStream input;
    private int nextTag = 0;
    private int tag;

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> T a(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        n(3);
        return (T) j(schema, extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> T b(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        n(2);
        return (T) k(Protobuf.a().d(cls), extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> T c(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        n(2);
        return (T) k(schema, extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> T e(Class<T> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        n(3);
        return (T) j(Protobuf.a().d(cls), extensionRegistryLite);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    public <K, V> void f(Map<K, V> map, MapEntryLite.Metadata<K, V> metadata, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        n(2);
        int iM = this.input.m(this.input.D());
        Object objI = metadata.defaultKey;
        Object objI2 = metadata.defaultValue;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.input.e()) {
                    break;
                }
                if (fieldNumber == 1) {
                    objI = i(metadata.keyType, null, null);
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
                    objI2 = i(metadata.valueType, metadata.defaultValue.getClass(), extensionRegistryLite);
                }
            } catch (Throwable th) {
                this.input.l(iM);
                throw th;
            }
        }
        map.put(objI, objI2);
        this.input.l(iM);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int getTag() {
        return this.tag;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public boolean readBool() throws IOException {
        n(0);
        return this.input.n();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public ByteString readBytes() throws IOException {
        n(2);
        return this.input.o();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public double readDouble() throws IOException {
        n(1);
        return this.input.p();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readEnum() throws IOException {
        n(0);
        return this.input.q();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readFixed32() throws IOException {
        n(5);
        return this.input.r();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readFixed64() throws IOException {
        n(1);
        return this.input.s();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public float readFloat() throws IOException {
        n(5);
        return this.input.t();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readInt32() throws IOException {
        n(0);
        return this.input.u();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readInt64() throws IOException {
        n(0);
        return this.input.v();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readSFixed32() throws IOException {
        n(5);
        return this.input.w();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readSFixed64() throws IOException {
        n(1);
        return this.input.x();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readSInt32() throws IOException {
        n(0);
        return this.input.y();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readSInt64() throws IOException {
        n(0);
        return this.input.z();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public String readString() throws IOException {
        n(2);
        return this.input.A();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readStringList(List<String> list) throws IOException {
        l(list, false);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readStringListRequireUtf8(List<String> list) throws IOException {
        l(list, true);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public String readStringRequireUtf8() throws IOException {
        n(2);
        return this.input.B();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int readUInt32() throws IOException {
        n(0);
        return this.input.D();
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public long readUInt64() throws IOException {
        n(0);
        return this.input.E();
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.CodedInputStreamReader$1, reason: invalid class name */
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

    public static CodedInputStreamReader h(CodedInputStream codedInputStream) {
        CodedInputStreamReader codedInputStreamReader = codedInputStream.wrapper;
        return codedInputStreamReader != null ? codedInputStreamReader : new CodedInputStreamReader(codedInputStream);
    }

    private Object i(WireFormat.FieldType fieldType, Class<?> cls, ExtensionRegistryLite extensionRegistryLite) throws IOException {
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

    private <T> T j(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
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

    private <T> T k(Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iD = this.input.D();
        CodedInputStream codedInputStream = this.input;
        if (codedInputStream.recursionDepth >= codedInputStream.recursionLimit) {
            throw InvalidProtocolBufferException.h();
        }
        int iM = codedInputStream.m(iD);
        T tNewInstance = schema.newInstance();
        this.input.recursionDepth++;
        schema.b(tNewInstance, this, extensionRegistryLite);
        schema.makeImmutable(tNewInstance);
        this.input.a(0);
        CodedInputStream codedInputStream2 = this.input;
        codedInputStream2.recursionDepth--;
        codedInputStream2.l(iM);
        return tNewInstance;
    }

    private void m(int i10) throws IOException {
        if (this.input.d() != i10) {
            throw InvalidProtocolBufferException.k();
        }
    }

    private void n(int i10) throws IOException {
        if (WireFormat.b(this.tag) != i10) {
            throw InvalidProtocolBufferException.d();
        }
    }

    private void o(int i10) throws IOException {
        if ((i10 & 3) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    private void p(int i10) throws IOException {
        if ((i10 & 7) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> void d(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iC;
        if (WireFormat.b(this.tag) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int i10 = this.tag;
        do {
            list.add(k(schema, extensionRegistryLite));
            if (this.input.e() || this.nextTag != 0) {
                return;
            } else {
                iC = this.input.C();
            }
        } while (iC == i10);
        this.nextTag = iC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Reader
    public <T> void g(List<T> list, Schema<T> schema, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iC;
        if (WireFormat.b(this.tag) != 3) {
            throw InvalidProtocolBufferException.d();
        }
        int i10 = this.tag;
        do {
            list.add(j(schema, extensionRegistryLite));
            if (this.input.e() || this.nextTag != 0) {
                return;
            } else {
                iC = this.input.C();
            }
        } while (iC == i10);
        this.nextTag = iC;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public int getFieldNumber() throws IOException {
        int i10 = this.nextTag;
        if (i10 != 0) {
            this.tag = i10;
            this.nextTag = 0;
        } else {
            this.tag = this.input.C();
        }
        int i11 = this.tag;
        if (i11 == 0 || i11 == this.endGroupTag) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.a(i11);
    }

    public void l(List<String> list, boolean z6) throws IOException {
        int iC;
        int iC2;
        if (WireFormat.b(this.tag) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        if (!(list instanceof LazyStringList) || z6) {
            do {
                list.add(z6 ? readStringRequireUtf8() : readString());
                if (this.input.e()) {
                    return;
                } else {
                    iC = this.input.C();
                }
            } while (iC == this.tag);
            this.nextTag = iC;
            return;
        }
        LazyStringList lazyStringList = (LazyStringList) list;
        do {
            lazyStringList.h(readBytes());
            if (this.input.e()) {
                return;
            } else {
                iC2 = this.input.C();
            }
        } while (iC2 == this.tag);
        this.nextTag = iC2;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readBoolList(List<Boolean> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof BooleanArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Boolean.valueOf(this.input.n()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Boolean.valueOf(this.input.n()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        BooleanArrayList booleanArrayList = (BooleanArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                booleanArrayList.addBoolean(this.input.n());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            booleanArrayList.addBoolean(this.input.n());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readBytesList(List<ByteString> list) throws IOException {
        int iC;
        if (WireFormat.b(this.tag) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            list.add(readBytes());
            if (this.input.e()) {
                return;
            } else {
                iC = this.input.C();
            }
        } while (iC == this.tag);
        this.nextTag = iC;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readDoubleList(List<Double> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof DoubleArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 1) {
                do {
                    list.add(Double.valueOf(this.input.p()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.D();
            p(iD);
            int iD2 = this.input.d() + iD;
            do {
                list.add(Double.valueOf(this.input.p()));
            } while (this.input.d() < iD2);
            return;
        }
        DoubleArrayList doubleArrayList = (DoubleArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 1) {
            do {
                doubleArrayList.addDouble(this.input.p());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD3 = this.input.D();
        p(iD3);
        int iD4 = this.input.d() + iD3;
        do {
            doubleArrayList.addDouble(this.input.p());
        } while (this.input.d() < iD4);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readEnumList(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.input.q()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Integer.valueOf(this.input.q()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                intArrayList.addInt(this.input.q());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            intArrayList.addInt(this.input.q());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFixed32List(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 2) {
                int iD = this.input.D();
                o(iD);
                int iD2 = this.input.d() + iD;
                do {
                    list.add(Integer.valueOf(this.input.r()));
                } while (this.input.d() < iD2);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                list.add(Integer.valueOf(this.input.r()));
                if (this.input.e()) {
                    return;
                } else {
                    iC = this.input.C();
                }
            } while (iC == this.tag);
            this.nextTag = iC;
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 2) {
            int iD3 = this.input.D();
            o(iD3);
            int iD4 = this.input.d() + iD3;
            do {
                intArrayList.addInt(this.input.r());
            } while (this.input.d() < iD4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            intArrayList.addInt(this.input.r());
            if (this.input.e()) {
                return;
            } else {
                iC2 = this.input.C();
            }
        } while (iC2 == this.tag);
        this.nextTag = iC2;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFixed64List(List<Long> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof LongArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.input.s()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.D();
            p(iD);
            int iD2 = this.input.d() + iD;
            do {
                list.add(Long.valueOf(this.input.s()));
            } while (this.input.d() < iD2);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 1) {
            do {
                longArrayList.addLong(this.input.s());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD3 = this.input.D();
        p(iD3);
        int iD4 = this.input.d() + iD3;
        do {
            longArrayList.addLong(this.input.s());
        } while (this.input.d() < iD4);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readFloatList(List<Float> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof FloatArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 2) {
                int iD = this.input.D();
                o(iD);
                int iD2 = this.input.d() + iD;
                do {
                    list.add(Float.valueOf(this.input.t()));
                } while (this.input.d() < iD2);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                list.add(Float.valueOf(this.input.t()));
                if (this.input.e()) {
                    return;
                } else {
                    iC = this.input.C();
                }
            } while (iC == this.tag);
            this.nextTag = iC;
            return;
        }
        FloatArrayList floatArrayList = (FloatArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 2) {
            int iD3 = this.input.D();
            o(iD3);
            int iD4 = this.input.d() + iD3;
            do {
                floatArrayList.addFloat(this.input.t());
            } while (this.input.d() < iD4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            floatArrayList.addFloat(this.input.t());
            if (this.input.e()) {
                return;
            } else {
                iC2 = this.input.C();
            }
        } while (iC2 == this.tag);
        this.nextTag = iC2;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readInt32List(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.input.u()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Integer.valueOf(this.input.u()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                intArrayList.addInt(this.input.u());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            intArrayList.addInt(this.input.u());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readInt64List(List<Long> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof LongArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.input.v()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Long.valueOf(this.input.v()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                longArrayList.addLong(this.input.v());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            longArrayList.addLong(this.input.v());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSFixed32List(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 2) {
                int iD = this.input.D();
                o(iD);
                int iD2 = this.input.d() + iD;
                do {
                    list.add(Integer.valueOf(this.input.w()));
                } while (this.input.d() < iD2);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.d();
            }
            do {
                list.add(Integer.valueOf(this.input.w()));
                if (this.input.e()) {
                    return;
                } else {
                    iC = this.input.C();
                }
            } while (iC == this.tag);
            this.nextTag = iC;
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 2) {
            int iD3 = this.input.D();
            o(iD3);
            int iD4 = this.input.d() + iD3;
            do {
                intArrayList.addInt(this.input.w());
            } while (this.input.d() < iD4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            intArrayList.addInt(this.input.w());
            if (this.input.e()) {
                return;
            } else {
                iC2 = this.input.C();
            }
        } while (iC2 == this.tag);
        this.nextTag = iC2;
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSFixed64List(List<Long> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof LongArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.input.x()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.D();
            p(iD);
            int iD2 = this.input.d() + iD;
            do {
                list.add(Long.valueOf(this.input.x()));
            } while (this.input.d() < iD2);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 1) {
            do {
                longArrayList.addLong(this.input.x());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD3 = this.input.D();
        p(iD3);
        int iD4 = this.input.d() + iD3;
        do {
            longArrayList.addLong(this.input.x());
        } while (this.input.d() < iD4);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSInt32List(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.input.y()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Integer.valueOf(this.input.y()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                intArrayList.addInt(this.input.y());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            intArrayList.addInt(this.input.y());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readSInt64List(List<Long> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof LongArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.input.z()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Long.valueOf(this.input.z()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                longArrayList.addLong(this.input.z());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            longArrayList.addLong(this.input.z());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readUInt32List(List<Integer> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof IntArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.input.D()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Integer.valueOf(this.input.D()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        IntArrayList intArrayList = (IntArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                intArrayList.addInt(this.input.D());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            intArrayList.addInt(this.input.D());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public void readUInt64List(List<Long> list) throws IOException {
        int iC;
        int iC2;
        if (!(list instanceof LongArrayList)) {
            int iB = WireFormat.b(this.tag);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.input.E()));
                    if (this.input.e()) {
                        return;
                    } else {
                        iC = this.input.C();
                    }
                } while (iC == this.tag);
                this.nextTag = iC;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.d();
            }
            int iD = this.input.d() + this.input.D();
            do {
                list.add(Long.valueOf(this.input.E()));
            } while (this.input.d() < iD);
            m(iD);
            return;
        }
        LongArrayList longArrayList = (LongArrayList) list;
        int iB2 = WireFormat.b(this.tag);
        if (iB2 == 0) {
            do {
                longArrayList.addLong(this.input.E());
                if (this.input.e()) {
                    return;
                } else {
                    iC2 = this.input.C();
                }
            } while (iC2 == this.tag);
            this.nextTag = iC2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.d();
        }
        int iD2 = this.input.d() + this.input.D();
        do {
            longArrayList.addLong(this.input.E());
        } while (this.input.d() < iD2);
        m(iD2);
    }

    @Override // androidx.datastore.preferences.protobuf.Reader
    public boolean skipField() throws IOException {
        int i10;
        if (this.input.e() || (i10 = this.tag) == this.endGroupTag) {
            return false;
        }
        return this.input.F(i10);
    }

    private CodedInputStreamReader(CodedInputStream codedInputStream) {
        CodedInputStream codedInputStream2 = (CodedInputStream) Internal.b(codedInputStream, "input");
        this.input = codedInputStream2;
        codedInputStream2.wrapper = this;
    }
}
