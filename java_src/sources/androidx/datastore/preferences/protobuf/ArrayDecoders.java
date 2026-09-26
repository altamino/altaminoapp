package androidx.datastore.preferences.protobuf;

import com.google.common.base.c;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
final class ArrayDecoders {

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.ArrayDecoders$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    static final class Registers {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;

        Registers() {
            this.extensionRegistry = ExtensionRegistryLite.b();
        }

        Registers(ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    static int A(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int I = I(bArr, i11, registers);
        intArrayList.addInt(CodedInputStream.b(registers.int1));
        while (I < i12) {
            int I2 = I(bArr, I, registers);
            if (i10 != registers.int1) {
                break;
            }
            I = I(bArr, I2, registers);
            intArrayList.addInt(CodedInputStream.b(registers.int1));
        }
        return I;
    }

    static int B(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int iL = L(bArr, i11, registers);
        longArrayList.addLong(CodedInputStream.c(registers.long1));
        while (iL < i12) {
            int I = I(bArr, iL, registers);
            if (i10 != registers.int1) {
                break;
            }
            iL = L(bArr, I, registers);
            longArrayList.addLong(CodedInputStream.c(registers.long1));
        }
        return iL;
    }

    static int H(int i10, byte[] bArr, int i11, Registers registers) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b7 = bArr[i11];
        if (b7 >= 0) {
            registers.int1 = i12 | (b7 << 7);
            return i13;
        }
        int i14 = i12 | ((b7 & 127) << 7);
        int i15 = i11 + 2;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            registers.int1 = i14 | (b10 << c.SO);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 14);
        int i17 = i11 + 3;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            registers.int1 = i16 | (b11 << c.NAK);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 21);
        int i19 = i11 + 4;
        byte b12 = bArr[i17];
        if (b12 >= 0) {
            registers.int1 = i18 | (b12 << c.FS);
            return i19;
        }
        int i20 = i18 | ((b12 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                registers.int1 = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int I(byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        byte b7 = bArr[i10];
        if (b7 < 0) {
            return H(b7, bArr, i11, registers);
        }
        registers.int1 = b7;
        return i11;
    }

    static int J(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int I = I(bArr, i11, registers);
        intArrayList.addInt(registers.int1);
        while (I < i12) {
            int I2 = I(bArr, I, registers);
            if (i10 != registers.int1) {
                break;
            }
            I = I(bArr, I2, registers);
            intArrayList.addInt(registers.int1);
        }
        return I;
    }

    static int K(long j6, byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        byte b7 = bArr[i10];
        long j10 = (j6 & 127) | (((long) (b7 & 127)) << 7);
        int i12 = 7;
        while (b7 < 0) {
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            i12 += 7;
            j10 |= ((long) (b10 & 127)) << i12;
            i11 = i13;
            b7 = b10;
        }
        registers.long1 = j10;
        return i11;
    }

    static int L(byte[] bArr, int i10, Registers registers) {
        int i11 = i10 + 1;
        long j6 = bArr[i10];
        if (j6 < 0) {
            return K(j6, bArr, i11, registers);
        }
        registers.long1 = j6;
        return i11;
    }

    static int M(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int iL = L(bArr, i11, registers);
        longArrayList.addLong(registers.long1);
        while (iL < i12) {
            int I = I(bArr, iL, registers);
            if (i10 != registers.int1) {
                break;
            }
            iL = L(bArr, I, registers);
            longArrayList.addLong(registers.long1);
        }
        return iL;
    }

    static int a(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int iL = L(bArr, i11, registers);
        booleanArrayList.addBoolean(registers.long1 != 0);
        while (iL < i12) {
            int I = I(bArr, iL, registers);
            if (i10 != registers.int1) {
                break;
            }
            iL = L(bArr, I, registers);
            booleanArrayList.addBoolean(registers.long1 != 0);
        }
        return iL;
    }

    static int e(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        doubleArrayList.addDouble(d(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            doubleArrayList.addDouble(d(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int f(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        Object objI;
        FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSet = extendableMessage.extensions;
        int i13 = i10 >>> 3;
        Object objValueOf = null;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.a().ordinal()]) {
                case 1:
                    DoubleArrayList doubleArrayList = new DoubleArrayList();
                    int iS = s(bArr, i11, doubleArrayList, registers);
                    fieldSet.x(generatedExtension.descriptor, doubleArrayList);
                    return iS;
                case 2:
                    FloatArrayList floatArrayList = new FloatArrayList();
                    int iV = v(bArr, i11, floatArrayList, registers);
                    fieldSet.x(generatedExtension.descriptor, floatArrayList);
                    return iV;
                case 3:
                case 4:
                    LongArrayList longArrayList = new LongArrayList();
                    int iZ = z(bArr, i11, longArrayList, registers);
                    fieldSet.x(generatedExtension.descriptor, longArrayList);
                    return iZ;
                case 5:
                case 6:
                    IntArrayList intArrayList = new IntArrayList();
                    int iY = y(bArr, i11, intArrayList, registers);
                    fieldSet.x(generatedExtension.descriptor, intArrayList);
                    return iY;
                case 7:
                case 8:
                    LongArrayList longArrayList2 = new LongArrayList();
                    int iU = u(bArr, i11, longArrayList2, registers);
                    fieldSet.x(generatedExtension.descriptor, longArrayList2);
                    return iU;
                case 9:
                case 10:
                    IntArrayList intArrayList2 = new IntArrayList();
                    int iT = t(bArr, i11, intArrayList2, registers);
                    fieldSet.x(generatedExtension.descriptor, intArrayList2);
                    return iT;
                case 11:
                    BooleanArrayList booleanArrayList = new BooleanArrayList();
                    int iR = r(bArr, i11, booleanArrayList, registers);
                    fieldSet.x(generatedExtension.descriptor, booleanArrayList);
                    return iR;
                case 12:
                    IntArrayList intArrayList3 = new IntArrayList();
                    int iW = w(bArr, i11, intArrayList3, registers);
                    fieldSet.x(generatedExtension.descriptor, intArrayList3);
                    return iW;
                case 13:
                    LongArrayList longArrayList3 = new LongArrayList();
                    int iX = x(bArr, i11, longArrayList3, registers);
                    fieldSet.x(generatedExtension.descriptor, longArrayList3);
                    return iX;
                case 14:
                    IntArrayList intArrayList4 = new IntArrayList();
                    int iY2 = y(bArr, i11, intArrayList4, registers);
                    UnknownFieldSetLite unknownFieldSetLite = extendableMessage.unknownFields;
                    UnknownFieldSetLite unknownFieldSetLite2 = (UnknownFieldSetLite) SchemaUtil.z(i13, intArrayList4, generatedExtension.descriptor.b(), unknownFieldSetLite != UnknownFieldSetLite.e() ? unknownFieldSetLite : null, unknownFieldSchema);
                    if (unknownFieldSetLite2 != null) {
                        extendableMessage.unknownFields = unknownFieldSetLite2;
                    }
                    fieldSet.x(generatedExtension.descriptor, intArrayList4);
                    return iY2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + generatedExtension.descriptor.getLiteType());
            }
        }
        if (generatedExtension.a() != WireFormat.FieldType.ENUM) {
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.a().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(d(bArr, i11));
                    i11 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(l(bArr, i11));
                    i11 += 4;
                    break;
                case 3:
                case 4:
                    i11 = L(bArr, i11, registers);
                    objValueOf = Long.valueOf(registers.long1);
                    break;
                case 5:
                case 6:
                    i11 = I(bArr, i11, registers);
                    objValueOf = Integer.valueOf(registers.int1);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(j(bArr, i11));
                    i11 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(h(bArr, i11));
                    i11 += 4;
                    break;
                case 11:
                    i11 = L(bArr, i11, registers);
                    objValueOf = Boolean.valueOf(registers.long1 != 0);
                    break;
                case 12:
                    i11 = I(bArr, i11, registers);
                    objValueOf = Integer.valueOf(CodedInputStream.b(registers.int1));
                    break;
                case 13:
                    i11 = L(bArr, i11, registers);
                    objValueOf = Long.valueOf(CodedInputStream.c(registers.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = b(bArr, i11, registers);
                    objValueOf = registers.object1;
                    break;
                case 16:
                    i11 = C(bArr, i11, registers);
                    objValueOf = registers.object1;
                    break;
                case 17:
                    i11 = n(Protobuf.a().d(generatedExtension.b().getClass()), bArr, i11, i12, (i13 << 3) | 4, registers);
                    objValueOf = registers.object1;
                    break;
                case 18:
                    i11 = p(Protobuf.a().d(generatedExtension.b().getClass()), bArr, i11, i12, registers);
                    objValueOf = registers.object1;
                    break;
            }
        } else {
            i11 = I(bArr, i11, registers);
            if (generatedExtension.descriptor.b().findValueByNumber(registers.int1) == null) {
                UnknownFieldSetLite unknownFieldSetLiteL = extendableMessage.unknownFields;
                if (unknownFieldSetLiteL == UnknownFieldSetLite.e()) {
                    unknownFieldSetLiteL = UnknownFieldSetLite.l();
                    extendableMessage.unknownFields = unknownFieldSetLiteL;
                }
                SchemaUtil.L(i13, registers.int1, unknownFieldSetLiteL, unknownFieldSchema);
                return i11;
            }
            objValueOf = Integer.valueOf(registers.int1);
        }
        if (generatedExtension.d()) {
            fieldSet.a(generatedExtension.descriptor, objValueOf);
        } else {
            int i14 = AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.a().ordinal()];
            if ((i14 == 17 || i14 == 18) && (objI = fieldSet.i(generatedExtension.descriptor)) != null) {
                objValueOf = Internal.h(objI, objValueOf);
            }
            fieldSet.x(generatedExtension.descriptor, objValueOf);
        }
        return i11;
    }

    static int g(int i10, byte[] bArr, int i11, int i12, Object obj, MessageLite messageLite, UnknownFieldSchema<UnknownFieldSetLite, UnknownFieldSetLite> unknownFieldSchema, Registers registers) throws IOException {
        GeneratedMessageLite.GeneratedExtension generatedExtensionA = registers.extensionRegistry.a(messageLite, i10 >>> 3);
        if (generatedExtensionA == null) {
            return G(i10, bArr, i11, i12, MessageSchema.p(obj), registers);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.C();
        return f(i10, bArr, i11, i12, extendableMessage, generatedExtensionA, unknownFieldSchema, registers);
    }

    static int h(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int i(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        intArrayList.addInt(h(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            intArrayList.addInt(h(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    static long j(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int k(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        longArrayList.addLong(j(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int I = I(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            longArrayList.addLong(j(bArr, I));
            i13 = I + 8;
        }
        return i13;
    }

    static int m(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        floatArrayList.addFloat(l(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int I = I(bArr, i13, registers);
            if (i10 != registers.int1) {
                break;
            }
            floatArrayList.addFloat(l(bArr, I));
            i13 = I + 4;
        }
        return i13;
    }

    static int n(Schema schema, byte[] bArr, int i10, int i11, int i12, Registers registers) throws IOException {
        MessageSchema messageSchema = (MessageSchema) schema;
        Object objNewInstance = messageSchema.newInstance();
        int iW = messageSchema.W(objNewInstance, bArr, i10, i11, i12, registers);
        messageSchema.makeImmutable(objNewInstance);
        registers.object1 = objNewInstance;
        return iW;
    }

    static int o(Schema schema, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int iN = n(schema, bArr, i11, i12, i13, registers);
        protobufList.add(registers.object1);
        while (iN < i12) {
            int I = I(bArr, iN, registers);
            if (i10 != registers.int1) {
                break;
            }
            iN = n(schema, bArr, I, i12, i13, registers);
            protobufList.add(registers.object1);
        }
        return iN;
    }

    static int p(Schema schema, byte[] bArr, int i10, int i11, Registers registers) throws IOException {
        int iH = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iH = H(i12, bArr, iH, registers);
            i12 = registers.int1;
        }
        int i13 = iH;
        if (i12 < 0 || i12 > i11 - i13) {
            throw InvalidProtocolBufferException.k();
        }
        Object objNewInstance = schema.newInstance();
        int i14 = i12 + i13;
        schema.c(objNewInstance, bArr, i13, i14, registers);
        schema.makeImmutable(objNewInstance);
        registers.object1 = objNewInstance;
        return i14;
    }

    static int r(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        BooleanArrayList booleanArrayList = (BooleanArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            I = L(bArr, I, registers);
            booleanArrayList.addBoolean(registers.long1 != 0);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int s(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        DoubleArrayList doubleArrayList = (DoubleArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            doubleArrayList.addDouble(d(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int t(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            intArrayList.addInt(h(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int u(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            longArrayList.addLong(j(bArr, I));
            I += 8;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int v(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        FloatArrayList floatArrayList = (FloatArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            floatArrayList.addFloat(l(bArr, I));
            I += 4;
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int w(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            I = I(bArr, I, registers);
            intArrayList.addInt(CodedInputStream.b(registers.int1));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int x(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            I = L(bArr, I, registers);
            longArrayList.addLong(CodedInputStream.c(registers.long1));
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int y(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        IntArrayList intArrayList = (IntArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            I = I(bArr, I, registers);
            intArrayList.addInt(registers.int1);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    static int z(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        LongArrayList longArrayList = (LongArrayList) protobufList;
        int I = I(bArr, i10, registers);
        int i11 = registers.int1 + I;
        while (I < i11) {
            I = L(bArr, I, registers);
            longArrayList.addLong(registers.long1);
        }
        if (I == i11) {
            return I;
        }
        throw InvalidProtocolBufferException.k();
    }

    ArrayDecoders() {
    }

    static int C(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                registers.object1 = "";
                return I;
            }
            registers.object1 = new String(bArr, I, i11, Internal.UTF_8);
            return I + i11;
        }
        throw InvalidProtocolBufferException.f();
    }

    static int D(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, registers);
        int i13 = registers.int1;
        if (i13 >= 0) {
            if (i13 == 0) {
                protobufList.add("");
            } else {
                protobufList.add(new String(bArr, I, i13, Internal.UTF_8));
                I += i13;
            }
            while (I < i12) {
                int I2 = I(bArr, I, registers);
                if (i10 != registers.int1) {
                    break;
                }
                I = I(bArr, I2, registers);
                int i14 = registers.int1;
                if (i14 >= 0) {
                    if (i14 == 0) {
                        protobufList.add("");
                    } else {
                        protobufList.add(new String(bArr, I, i14, Internal.UTF_8));
                        I += i14;
                    }
                } else {
                    throw InvalidProtocolBufferException.f();
                }
            }
            return I;
        }
        throw InvalidProtocolBufferException.f();
    }

    static int E(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, registers);
        int i13 = registers.int1;
        if (i13 >= 0) {
            if (i13 == 0) {
                protobufList.add("");
            } else {
                int i14 = I + i13;
                if (Utf8.u(bArr, I, i14)) {
                    protobufList.add(new String(bArr, I, i13, Internal.UTF_8));
                    I = i14;
                } else {
                    throw InvalidProtocolBufferException.c();
                }
            }
            while (I < i12) {
                int I2 = I(bArr, I, registers);
                if (i10 != registers.int1) {
                    break;
                }
                I = I(bArr, I2, registers);
                int i15 = registers.int1;
                if (i15 >= 0) {
                    if (i15 == 0) {
                        protobufList.add("");
                    } else {
                        int i16 = I + i15;
                        if (Utf8.u(bArr, I, i16)) {
                            protobufList.add(new String(bArr, I, i15, Internal.UTF_8));
                            I = i16;
                        } else {
                            throw InvalidProtocolBufferException.c();
                        }
                    }
                } else {
                    throw InvalidProtocolBufferException.f();
                }
            }
            return I;
        }
        throw InvalidProtocolBufferException.f();
    }

    static int F(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                registers.object1 = "";
                return I;
            }
            registers.object1 = Utf8.h(bArr, I, i11);
            return I + i11;
        }
        throw InvalidProtocolBufferException.f();
    }

    static int G(int i10, byte[] bArr, int i11, int i12, UnknownFieldSetLite unknownFieldSetLite, Registers registers) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) != 0) {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB == 5) {
                                unknownFieldSetLite.n(i10, Integer.valueOf(h(bArr, i11)));
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.b();
                        }
                        UnknownFieldSetLite unknownFieldSetLiteL = UnknownFieldSetLite.l();
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            int I = I(bArr, i11, registers);
                            int i15 = registers.int1;
                            if (i15 == i13) {
                                i14 = i15;
                                i11 = I;
                                break;
                            }
                            i14 = i15;
                            i11 = G(i15, bArr, I, i12, unknownFieldSetLiteL, registers);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            unknownFieldSetLite.n(i10, unknownFieldSetLiteL);
                            return i11;
                        }
                        throw InvalidProtocolBufferException.g();
                    }
                    int I2 = I(bArr, i11, registers);
                    int i16 = registers.int1;
                    if (i16 >= 0) {
                        if (i16 <= bArr.length - I2) {
                            if (i16 == 0) {
                                unknownFieldSetLite.n(i10, ByteString.EMPTY);
                            } else {
                                unknownFieldSetLite.n(i10, ByteString.p(bArr, I2, i16));
                            }
                            return I2 + i16;
                        }
                        throw InvalidProtocolBufferException.k();
                    }
                    throw InvalidProtocolBufferException.f();
                }
                unknownFieldSetLite.n(i10, Long.valueOf(j(bArr, i11)));
                return i11 + 8;
            }
            int iL = L(bArr, i11, registers);
            unknownFieldSetLite.n(i10, Long.valueOf(registers.long1));
            return iL;
        }
        throw InvalidProtocolBufferException.b();
    }

    static int N(int i10, byte[] bArr, int i11, int i12, Registers registers) throws InvalidProtocolBufferException {
        if (WireFormat.a(i10) != 0) {
            int iB = WireFormat.b(i10);
            if (iB != 0) {
                if (iB != 1) {
                    if (iB != 2) {
                        if (iB != 3) {
                            if (iB == 5) {
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.b();
                        }
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            i11 = I(bArr, i11, registers);
                            i14 = registers.int1;
                            if (i14 == i13) {
                                break;
                            }
                            i11 = N(i14, bArr, i11, i12, registers);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            return i11;
                        }
                        throw InvalidProtocolBufferException.g();
                    }
                    return I(bArr, i11, registers) + registers.int1;
                }
                return i11 + 8;
            }
            return L(bArr, i11, registers);
        }
        throw InvalidProtocolBufferException.b();
    }

    static int b(byte[] bArr, int i10, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i10, registers);
        int i11 = registers.int1;
        if (i11 >= 0) {
            if (i11 <= bArr.length - I) {
                if (i11 == 0) {
                    registers.object1 = ByteString.EMPTY;
                    return I;
                }
                registers.object1 = ByteString.p(bArr, I, i11);
                return I + i11;
            }
            throw InvalidProtocolBufferException.k();
        }
        throw InvalidProtocolBufferException.f();
    }

    static int c(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws InvalidProtocolBufferException {
        int I = I(bArr, i11, registers);
        int i13 = registers.int1;
        if (i13 >= 0) {
            if (i13 <= bArr.length - I) {
                if (i13 == 0) {
                    protobufList.add(ByteString.EMPTY);
                } else {
                    protobufList.add(ByteString.p(bArr, I, i13));
                    I += i13;
                }
                while (I < i12) {
                    int I2 = I(bArr, I, registers);
                    if (i10 != registers.int1) {
                        break;
                    }
                    I = I(bArr, I2, registers);
                    int i14 = registers.int1;
                    if (i14 >= 0) {
                        if (i14 <= bArr.length - I) {
                            if (i14 == 0) {
                                protobufList.add(ByteString.EMPTY);
                            } else {
                                protobufList.add(ByteString.p(bArr, I, i14));
                                I += i14;
                            }
                        } else {
                            throw InvalidProtocolBufferException.k();
                        }
                    } else {
                        throw InvalidProtocolBufferException.f();
                    }
                }
                return I;
            }
            throw InvalidProtocolBufferException.k();
        }
        throw InvalidProtocolBufferException.f();
    }

    static double d(byte[] bArr, int i10) {
        return Double.longBitsToDouble(j(bArr, i10));
    }

    static float l(byte[] bArr, int i10) {
        return Float.intBitsToFloat(h(bArr, i10));
    }

    static int q(Schema<?> schema, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, Registers registers) throws IOException {
        int iP = p(schema, bArr, i11, i12, registers);
        protobufList.add(registers.object1);
        while (iP < i12) {
            int I = I(bArr, iP, registers);
            if (i10 != registers.int1) {
                break;
            }
            iP = p(schema, bArr, I, i12, registers);
            protobufList.add(registers.object1);
        }
        return iP;
    }
}
