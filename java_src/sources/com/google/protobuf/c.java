package com.google.protobuf;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class c {
    static int decodeVarint32(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        byte b7 = bArr[i10];
        if (b7 < 0) {
            return decodeVarint32(b7, bArr, i11, bVar);
        }
        bVar.int1 = b7;
        return i11;
    }

    static int decodeVarint64(byte[] bArr, int i10, b bVar) {
        int i11 = i10 + 1;
        long j6 = bArr[i10];
        if (j6 < 0) {
            return decodeVarint64(j6, bArr, i11, bVar);
        }
        bVar.long1 = j6;
        return i11;
    }

    static int mergeGroupField(Object obj, m0 m0Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        int proto2Message = ((z) m0Var).parseProto2Message(obj, bArr, i10, i11, i12, bVar);
        bVar.object1 = obj;
        return proto2Message;
    }

    static /* synthetic */ class a {
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

    static final class b {
        public final ExtensionRegistryLite extensionRegistry;
        public int int1;
        public long long1;
        public Object object1;

        b() {
            this.extensionRegistry = ExtensionRegistryLite.getEmptyRegistry();
        }

        b(ExtensionRegistryLite extensionRegistryLite) {
            extensionRegistryLite.getClass();
            this.extensionRegistry = extensionRegistryLite;
        }
    }

    static int decodeBoolList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        d dVar = (d) protobufList;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        dVar.addBoolean(bVar.long1 != 0);
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            dVar.addBoolean(bVar.long1 != 0);
        }
        return iDecodeVarint64;
    }

    static int decodeDoubleList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        h hVar = (h) protobufList;
        hVar.addDouble(decodeDouble(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            hVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 8;
        }
        return i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static int decodeExtension(int i10, byte[] bArr, int i11, int i12, GeneratedMessageLite.ExtendableMessage<?, ?> extendableMessage, GeneratedMessageLite.GeneratedExtension<?, ?> generatedExtension, r0<UnknownFieldSetLite, UnknownFieldSetLite> r0Var, b bVar) throws IOException {
        FieldSet<GeneratedMessageLite.b> fieldSet = extendableMessage.extensions;
        int i13 = i10 >>> 3;
        if (generatedExtension.descriptor.isRepeated() && generatedExtension.descriptor.isPacked()) {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    h hVar = new h();
                    int iDecodePackedDoubleList = decodePackedDoubleList(bArr, i11, hVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, hVar);
                    return iDecodePackedDoubleList;
                case 2:
                    m mVar = new m();
                    int iDecodePackedFloatList = decodePackedFloatList(bArr, i11, mVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, mVar);
                    return iDecodePackedFloatList;
                case 3:
                case 4:
                    r rVar = new r();
                    int iDecodePackedVarint64List = decodePackedVarint64List(bArr, i11, rVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, rVar);
                    return iDecodePackedVarint64List;
                case 5:
                case 6:
                    o oVar = new o();
                    int iDecodePackedVarint32List = decodePackedVarint32List(bArr, i11, oVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar);
                    return iDecodePackedVarint32List;
                case 7:
                case 8:
                    r rVar2 = new r();
                    int iDecodePackedFixed64List = decodePackedFixed64List(bArr, i11, rVar2, bVar);
                    fieldSet.setField(generatedExtension.descriptor, rVar2);
                    return iDecodePackedFixed64List;
                case 9:
                case 10:
                    o oVar2 = new o();
                    int iDecodePackedFixed32List = decodePackedFixed32List(bArr, i11, oVar2, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar2);
                    return iDecodePackedFixed32List;
                case 11:
                    d dVar = new d();
                    int iDecodePackedBoolList = decodePackedBoolList(bArr, i11, dVar, bVar);
                    fieldSet.setField(generatedExtension.descriptor, dVar);
                    return iDecodePackedBoolList;
                case 12:
                    o oVar3 = new o();
                    int iDecodePackedSInt32List = decodePackedSInt32List(bArr, i11, oVar3, bVar);
                    fieldSet.setField(generatedExtension.descriptor, oVar3);
                    return iDecodePackedSInt32List;
                case 13:
                    r rVar3 = new r();
                    int iDecodePackedSInt64List = decodePackedSInt64List(bArr, i11, rVar3, bVar);
                    fieldSet.setField(generatedExtension.descriptor, rVar3);
                    return iDecodePackedSInt64List;
                case 14:
                    o oVar4 = new o();
                    int iDecodePackedVarint32List2 = decodePackedVarint32List(bArr, i11, oVar4, bVar);
                    o0.filterUnknownEnumList((Object) extendableMessage, i13, (List<Integer>) oVar4, generatedExtension.descriptor.getEnumType(), (Object) null, (r0<UT, Object>) r0Var);
                    fieldSet.setField(generatedExtension.descriptor, oVar4);
                    return iDecodePackedVarint32List2;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + generatedExtension.descriptor.getLiteType());
            }
        }
        Object objValueOf = null;
        if (generatedExtension.getLiteType() == WireFormat.FieldType.ENUM) {
            i11 = decodeVarint32(bArr, i11, bVar);
            if (generatedExtension.descriptor.getEnumType().findValueByNumber(bVar.int1) == null) {
                o0.storeUnknownEnum(extendableMessage, i13, bVar.int1, null, r0Var);
                return i11;
            }
            objValueOf = Integer.valueOf(bVar.int1);
        } else {
            switch (a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[generatedExtension.getLiteType().ordinal()]) {
                case 1:
                    objValueOf = Double.valueOf(decodeDouble(bArr, i11));
                    i11 += 8;
                    break;
                case 2:
                    objValueOf = Float.valueOf(decodeFloat(bArr, i11));
                    i11 += 4;
                    break;
                case 3:
                case 4:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Long.valueOf(bVar.long1);
                    break;
                case 5:
                case 6:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    objValueOf = Integer.valueOf(bVar.int1);
                    break;
                case 7:
                case 8:
                    objValueOf = Long.valueOf(decodeFixed64(bArr, i11));
                    i11 += 8;
                    break;
                case 9:
                case 10:
                    objValueOf = Integer.valueOf(decodeFixed32(bArr, i11));
                    i11 += 4;
                    break;
                case 11:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Boolean.valueOf(bVar.long1 != 0);
                    break;
                case 12:
                    i11 = decodeVarint32(bArr, i11, bVar);
                    objValueOf = Integer.valueOf(CodedInputStream.decodeZigZag32(bVar.int1));
                    break;
                case 13:
                    i11 = decodeVarint64(bArr, i11, bVar);
                    objValueOf = Long.valueOf(CodedInputStream.decodeZigZag64(bVar.long1));
                    break;
                case 14:
                    throw new IllegalStateException("Shouldn't reach here.");
                case 15:
                    i11 = decodeBytes(bArr, i11, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 16:
                    i11 = decodeString(bArr, i11, bVar);
                    objValueOf = bVar.object1;
                    break;
                case 17:
                    int i14 = (i13 << 3) | 4;
                    m0 m0VarSchemaFor = h0.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int iDecodeGroupField = decodeGroupField(m0VarSchemaFor, bArr, i11, i12, i14, bVar);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, bVar.object1);
                        return iDecodeGroupField;
                    }
                    Object field = fieldSet.getField(generatedExtension.descriptor);
                    if (field == null) {
                        field = m0VarSchemaFor.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field);
                    }
                    return mergeGroupField(field, m0VarSchemaFor, bArr, i11, i12, i14, bVar);
                case 18:
                    m0 m0VarSchemaFor2 = h0.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass());
                    if (generatedExtension.isRepeated()) {
                        int iDecodeMessageField = decodeMessageField(m0VarSchemaFor2, bArr, i11, i12, bVar);
                        fieldSet.addRepeatedField(generatedExtension.descriptor, bVar.object1);
                        return iDecodeMessageField;
                    }
                    Object field2 = fieldSet.getField(generatedExtension.descriptor);
                    if (field2 == null) {
                        field2 = m0VarSchemaFor2.newInstance();
                        fieldSet.setField(generatedExtension.descriptor, field2);
                    }
                    return mergeMessageField(field2, m0VarSchemaFor2, bArr, i11, i12, bVar);
            }
        }
        if (generatedExtension.isRepeated()) {
            fieldSet.addRepeatedField(generatedExtension.descriptor, objValueOf);
        } else {
            fieldSet.setField(generatedExtension.descriptor, objValueOf);
        }
        return i11;
    }

    static int decodeExtensionOrUnknownField(int i10, byte[] bArr, int i11, int i12, Object obj, MessageLite messageLite, r0<UnknownFieldSetLite, UnknownFieldSetLite> r0Var, b bVar) throws IOException {
        GeneratedMessageLite.GeneratedExtension generatedExtensionFindLiteExtensionByNumber = bVar.extensionRegistry.findLiteExtensionByNumber(messageLite, i10 >>> 3);
        if (generatedExtensionFindLiteExtensionByNumber == null) {
            return decodeUnknownField(i10, bArr, i11, i12, z.getMutableUnknownFields(obj), bVar);
        }
        GeneratedMessageLite.ExtendableMessage extendableMessage = (GeneratedMessageLite.ExtendableMessage) obj;
        extendableMessage.ensureExtensionsAreMutable();
        return decodeExtension(i10, bArr, i11, i12, extendableMessage, generatedExtensionFindLiteExtensionByNumber, r0Var, bVar);
    }

    static int decodeFixed32(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    static int decodeFixed32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        oVar.addInt(decodeFixed32(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            oVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 4;
        }
        return i13;
    }

    static long decodeFixed64(byte[] bArr, int i10) {
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
    }

    static int decodeFixed64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        r rVar = (r) protobufList;
        rVar.addLong(decodeFixed64(bArr, i11));
        int i13 = i11 + 8;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            rVar.addLong(decodeFixed64(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 8;
        }
        return i13;
    }

    static int decodeFloatList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        m mVar = (m) protobufList;
        mVar.addFloat(decodeFloat(bArr, i11));
        int i13 = i11 + 4;
        while (i13 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, i13, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            mVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            i13 = iDecodeVarint32 + 4;
        }
        return i13;
    }

    static int decodeGroupList(m0 m0Var, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int iDecodeGroupField = decodeGroupField(m0Var, bArr, i11, i12, i13, bVar);
        protobufList.add(bVar.object1);
        while (iDecodeGroupField < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeGroupField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeGroupField = decodeGroupField(m0Var, bArr, iDecodeVarint32, i12, i13, bVar);
            protobufList.add(bVar.object1);
        }
        return iDecodeGroupField;
    }

    static int decodePackedBoolList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        d dVar = (d) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            dVar.addBoolean(bVar.long1 != 0);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedDoubleList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        h hVar = (h) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            hVar.addDouble(decodeDouble(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            oVar.addInt(decodeFixed32(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFixed64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        r rVar = (r) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            rVar.addLong(decodeFixed64(bArr, iDecodeVarint32));
            iDecodeVarint32 += 8;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedFloatList(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        m mVar = (m) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            mVar.addFloat(decodeFloat(bArr, iDecodeVarint32));
            iDecodeVarint32 += 4;
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedSInt64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        r rVar = (r) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            rVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint32List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        o oVar = (o) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            oVar.addInt(bVar.int1);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodePackedVarint64List(byte[] bArr, int i10, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        r rVar = (r) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1 + iDecodeVarint32;
        while (iDecodeVarint32 < i11) {
            iDecodeVarint32 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            rVar.addLong(bVar.long1);
        }
        if (iDecodeVarint32 == i11) {
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    static int decodeSInt32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            oVar.addInt(CodedInputStream.decodeZigZag32(bVar.int1));
        }
        return iDecodeVarint32;
    }

    static int decodeSInt64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        r rVar = (r) protobufList;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        rVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            rVar.addLong(CodedInputStream.decodeZigZag64(bVar.long1));
        }
        return iDecodeVarint64;
    }

    static int decodeVarint32List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        o oVar = (o) protobufList;
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        oVar.addInt(bVar.int1);
        while (iDecodeVarint32 < i12) {
            int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
            oVar.addInt(bVar.int1);
        }
        return iDecodeVarint32;
    }

    static int decodeVarint64List(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) {
        r rVar = (r) protobufList;
        int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
        rVar.addLong(bVar.long1);
        while (iDecodeVarint64 < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint64, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeVarint64 = decodeVarint64(bArr, iDecodeVarint32, bVar);
            rVar.addLong(bVar.long1);
        }
        return iDecodeVarint64;
    }

    static int mergeMessageField(Object obj, m0 m0Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        int iDecodeVarint32 = i10 + 1;
        int i12 = bArr[i10];
        if (i12 < 0) {
            iDecodeVarint32 = decodeVarint32(i12, bArr, iDecodeVarint32, bVar);
            i12 = bVar.int1;
        }
        int i13 = iDecodeVarint32;
        if (i12 < 0 || i12 > i11 - i13) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i14 = i12 + i13;
        m0Var.mergeFrom(obj, bArr, i13, i14, bVar);
        bVar.object1 = obj;
        return i14;
    }

    private c() {
    }

    static int decodeBytes(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 <= bArr.length - iDecodeVarint32) {
                if (i11 == 0) {
                    bVar.object1 = ByteString.EMPTY;
                    return iDecodeVarint32;
                }
                bVar.object1 = ByteString.copyFrom(bArr, iDecodeVarint32, i11);
                return iDecodeVarint32 + i11;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static int decodeBytesList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 >= 0) {
            if (i13 <= bArr.length - iDecodeVarint32) {
                if (i13 == 0) {
                    protobufList.add(ByteString.EMPTY);
                } else {
                    protobufList.add(ByteString.copyFrom(bArr, iDecodeVarint32, i13));
                    iDecodeVarint32 += i13;
                }
                while (iDecodeVarint32 < i12) {
                    int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
                    if (i10 != bVar.int1) {
                        break;
                    }
                    iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
                    int i14 = bVar.int1;
                    if (i14 >= 0) {
                        if (i14 <= bArr.length - iDecodeVarint32) {
                            if (i14 == 0) {
                                protobufList.add(ByteString.EMPTY);
                            } else {
                                protobufList.add(ByteString.copyFrom(bArr, iDecodeVarint32, i14));
                                iDecodeVarint32 += i14;
                            }
                        } else {
                            throw InvalidProtocolBufferException.truncatedMessage();
                        }
                    } else {
                        throw InvalidProtocolBufferException.negativeSize();
                    }
                }
                return iDecodeVarint32;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static double decodeDouble(byte[] bArr, int i10) {
        return Double.longBitsToDouble(decodeFixed64(bArr, i10));
    }

    static float decodeFloat(byte[] bArr, int i10) {
        return Float.intBitsToFloat(decodeFixed32(bArr, i10));
    }

    static int decodeGroupField(m0 m0Var, byte[] bArr, int i10, int i11, int i12, b bVar) throws IOException {
        Object objNewInstance = m0Var.newInstance();
        int iMergeGroupField = mergeGroupField(objNewInstance, m0Var, bArr, i10, i11, i12, bVar);
        m0Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeGroupField;
    }

    static int decodeMessageField(m0 m0Var, byte[] bArr, int i10, int i11, b bVar) throws IOException {
        Object objNewInstance = m0Var.newInstance();
        int iMergeMessageField = mergeMessageField(objNewInstance, m0Var, bArr, i10, i11, bVar);
        m0Var.makeImmutable(objNewInstance);
        bVar.object1 = objNewInstance;
        return iMergeMessageField;
    }

    static int decodeMessageList(m0<?> m0Var, int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws IOException {
        int iDecodeMessageField = decodeMessageField(m0Var, bArr, i11, i12, bVar);
        protobufList.add(bVar.object1);
        while (iDecodeMessageField < i12) {
            int iDecodeVarint32 = decodeVarint32(bArr, iDecodeMessageField, bVar);
            if (i10 != bVar.int1) {
                break;
            }
            iDecodeMessageField = decodeMessageField(m0Var, bArr, iDecodeVarint32, i12, bVar);
            protobufList.add(bVar.object1);
        }
        return iDecodeMessageField;
    }

    static int decodeString(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.object1 = "";
                return iDecodeVarint32;
            }
            bVar.object1 = new String(bArr, iDecodeVarint32, i11, Internal.UTF_8);
            return iDecodeVarint32 + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static int decodeStringList(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 >= 0) {
            if (i13 == 0) {
                protobufList.add("");
            } else {
                protobufList.add(new String(bArr, iDecodeVarint32, i13, Internal.UTF_8));
                iDecodeVarint32 += i13;
            }
            while (iDecodeVarint32 < i12) {
                int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
                if (i10 != bVar.int1) {
                    break;
                }
                iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
                int i14 = bVar.int1;
                if (i14 >= 0) {
                    if (i14 == 0) {
                        protobufList.add("");
                    } else {
                        protobufList.add(new String(bArr, iDecodeVarint32, i14, Internal.UTF_8));
                        iDecodeVarint32 += i14;
                    }
                } else {
                    throw InvalidProtocolBufferException.negativeSize();
                }
            }
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static int decodeStringListRequireUtf8(int i10, byte[] bArr, int i11, int i12, Internal.ProtobufList<?> protobufList, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
        int i13 = bVar.int1;
        if (i13 >= 0) {
            if (i13 == 0) {
                protobufList.add("");
            } else {
                int i14 = iDecodeVarint32 + i13;
                if (u0.isValidUtf8(bArr, iDecodeVarint32, i14)) {
                    protobufList.add(new String(bArr, iDecodeVarint32, i13, Internal.UTF_8));
                    iDecodeVarint32 = i14;
                } else {
                    throw InvalidProtocolBufferException.invalidUtf8();
                }
            }
            while (iDecodeVarint32 < i12) {
                int iDecodeVarint33 = decodeVarint32(bArr, iDecodeVarint32, bVar);
                if (i10 != bVar.int1) {
                    break;
                }
                iDecodeVarint32 = decodeVarint32(bArr, iDecodeVarint33, bVar);
                int i15 = bVar.int1;
                if (i15 >= 0) {
                    if (i15 == 0) {
                        protobufList.add("");
                    } else {
                        int i16 = iDecodeVarint32 + i15;
                        if (u0.isValidUtf8(bArr, iDecodeVarint32, i16)) {
                            protobufList.add(new String(bArr, iDecodeVarint32, i15, Internal.UTF_8));
                            iDecodeVarint32 = i16;
                        } else {
                            throw InvalidProtocolBufferException.invalidUtf8();
                        }
                    }
                } else {
                    throw InvalidProtocolBufferException.negativeSize();
                }
            }
            return iDecodeVarint32;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static int decodeStringRequireUtf8(byte[] bArr, int i10, b bVar) throws InvalidProtocolBufferException {
        int iDecodeVarint32 = decodeVarint32(bArr, i10, bVar);
        int i11 = bVar.int1;
        if (i11 >= 0) {
            if (i11 == 0) {
                bVar.object1 = "";
                return iDecodeVarint32;
            }
            bVar.object1 = u0.decodeUtf8(bArr, iDecodeVarint32, i11);
            return iDecodeVarint32 + i11;
        }
        throw InvalidProtocolBufferException.negativeSize();
    }

    static int decodeUnknownField(int i10, byte[] bArr, int i11, int i12, UnknownFieldSetLite unknownFieldSetLite, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) != 0) {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType != 0) {
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        if (tagWireType != 3) {
                            if (tagWireType == 5) {
                                unknownFieldSetLite.storeField(i10, Integer.valueOf(decodeFixed32(bArr, i11)));
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        UnknownFieldSetLite unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            int iDecodeVarint32 = decodeVarint32(bArr, i11, bVar);
                            int i15 = bVar.int1;
                            if (i15 == i13) {
                                i14 = i15;
                                i11 = iDecodeVarint32;
                                break;
                            }
                            i14 = i15;
                            i11 = decodeUnknownField(i15, bArr, iDecodeVarint32, i12, unknownFieldSetLiteNewInstance, bVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            unknownFieldSetLite.storeField(i10, unknownFieldSetLiteNewInstance);
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    int iDecodeVarint33 = decodeVarint32(bArr, i11, bVar);
                    int i16 = bVar.int1;
                    if (i16 >= 0) {
                        if (i16 <= bArr.length - iDecodeVarint33) {
                            if (i16 == 0) {
                                unknownFieldSetLite.storeField(i10, ByteString.EMPTY);
                            } else {
                                unknownFieldSetLite.storeField(i10, ByteString.copyFrom(bArr, iDecodeVarint33, i16));
                            }
                            return iDecodeVarint33 + i16;
                        }
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                    throw InvalidProtocolBufferException.negativeSize();
                }
                unknownFieldSetLite.storeField(i10, Long.valueOf(decodeFixed64(bArr, i11)));
                return i11 + 8;
            }
            int iDecodeVarint64 = decodeVarint64(bArr, i11, bVar);
            unknownFieldSetLite.storeField(i10, Long.valueOf(bVar.long1));
            return iDecodeVarint64;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    static int skipField(int i10, byte[] bArr, int i11, int i12, b bVar) throws InvalidProtocolBufferException {
        if (WireFormat.getTagFieldNumber(i10) != 0) {
            int tagWireType = WireFormat.getTagWireType(i10);
            if (tagWireType != 0) {
                if (tagWireType != 1) {
                    if (tagWireType != 2) {
                        if (tagWireType != 3) {
                            if (tagWireType == 5) {
                                return i11 + 4;
                            }
                            throw InvalidProtocolBufferException.invalidTag();
                        }
                        int i13 = (i10 & (-8)) | 4;
                        int i14 = 0;
                        while (i11 < i12) {
                            i11 = decodeVarint32(bArr, i11, bVar);
                            i14 = bVar.int1;
                            if (i14 == i13) {
                                break;
                            }
                            i11 = skipField(i14, bArr, i11, i12, bVar);
                        }
                        if (i11 <= i12 && i14 == i13) {
                            return i11;
                        }
                        throw InvalidProtocolBufferException.parseFailure();
                    }
                    return decodeVarint32(bArr, i11, bVar) + bVar.int1;
                }
                return i11 + 8;
            }
            return decodeVarint64(bArr, i11, bVar);
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    static int decodeVarint32(int i10, byte[] bArr, int i11, b bVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b7 = bArr[i11];
        if (b7 >= 0) {
            bVar.int1 = i12 | (b7 << 7);
            return i13;
        }
        int i14 = i12 | ((b7 & 127) << 7);
        int i15 = i11 + 2;
        byte b10 = bArr[i13];
        if (b10 >= 0) {
            bVar.int1 = i14 | (b10 << com.google.common.base.c.SO);
            return i15;
        }
        int i16 = i14 | ((b10 & 127) << 14);
        int i17 = i11 + 3;
        byte b11 = bArr[i15];
        if (b11 >= 0) {
            bVar.int1 = i16 | (b11 << com.google.common.base.c.NAK);
            return i17;
        }
        int i18 = i16 | ((b11 & 127) << 21);
        int i19 = i11 + 4;
        byte b12 = bArr[i17];
        if (b12 >= 0) {
            bVar.int1 = i18 | (b12 << com.google.common.base.c.FS);
            return i19;
        }
        int i20 = i18 | ((b12 & 127) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                bVar.int1 = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    static int decodeVarint64(long j6, byte[] bArr, int i10, b bVar) {
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
        bVar.long1 = j10;
        return i11;
    }
}
