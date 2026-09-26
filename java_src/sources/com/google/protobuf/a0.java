package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
final class a0<T> implements m0<T> {
    private final MessageLite defaultInstance;
    private final j<?> extensionSchema;
    private final boolean hasExtensions;
    private final r0<?, ?> unknownFieldSchema;

    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, T t10) {
        o0.mergeUnknownFields(this.unknownFieldSchema, t5, t10);
        if (this.hasExtensions) {
            o0.mergeExtensions(this.extensionSchema, t5, t10);
        }
    }

    static <T> a0<T> newSchema(r0<?, ?> r0Var, j<?> jVar, MessageLite messageLite) {
        return new a0<>(r0Var, jVar, messageLite);
    }

    @Override // com.google.protobuf.m0
    public boolean equals(T t5, T t10) {
        if (!this.unknownFieldSchema.getFromMessage(t5).equals(this.unknownFieldSchema.getFromMessage(t10))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.getExtensions(t5).equals(this.extensionSchema.getExtensions(t10));
        }
        return true;
    }

    @Override // com.google.protobuf.m0
    public int getSerializedSize(T t5) {
        int unknownFieldsSerializedSize = getUnknownFieldsSerializedSize(this.unknownFieldSchema, t5);
        return this.hasExtensions ? unknownFieldsSerializedSize + this.extensionSchema.getExtensions(t5).getMessageSetSerializedSize() : unknownFieldsSerializedSize;
    }

    @Override // com.google.protobuf.m0
    public int hashCode(T t5) {
        int iHashCode = this.unknownFieldSchema.getFromMessage(t5).hashCode();
        return this.hasExtensions ? (iHashCode * 53) + this.extensionSchema.getExtensions(t5).hashCode() : iHashCode;
    }

    @Override // com.google.protobuf.m0
    public final boolean isInitialized(T t5) {
        return this.extensionSchema.getExtensions(t5).isInitialized();
    }

    @Override // com.google.protobuf.m0
    public void makeImmutable(T t5) {
        this.unknownFieldSchema.makeImmutable(t5);
        this.extensionSchema.makeImmutable(t5);
    }

    @Override // com.google.protobuf.m0
    public T newInstance() {
        MessageLite messageLite = this.defaultInstance;
        return messageLite instanceof GeneratedMessageLite ? (T) ((GeneratedMessageLite) messageLite).newMutableInstance() : (T) messageLite.newBuilderForType().buildPartial();
    }

    @Override // com.google.protobuf.m0
    public void writeTo(T t5, Writer writer) throws IOException {
        for (T t10 : this.extensionSchema.getExtensions(t5)) {
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) t10.getKey();
            if (fieldDescriptorLite.getLiteJavaType() != WireFormat.JavaType.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (t10 instanceof LazyField.b) {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), ((LazyField.b) t10).getField().toByteString());
            } else {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), t10.getValue());
            }
        }
        writeUnknownFieldsHelper(this.unknownFieldSchema, t5, writer);
    }

    private a0(r0<?, ?> r0Var, j<?> jVar, MessageLite messageLite) {
        this.unknownFieldSchema = r0Var;
        this.hasExtensions = jVar.hasExtensions(messageLite);
        this.extensionSchema = jVar;
        this.defaultInstance = messageLite;
    }

    private <UT, UB> int getUnknownFieldsSerializedSize(r0<UT, UB> r0Var, T t5) {
        return r0Var.getSerializedSizeAsMessageSet(r0Var.getFromMessage(t5));
    }

    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void mergeFromHelper(r0<UT, UB> r0Var, j<ET> jVar, T t5, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        UB builderFromMessage = r0Var.getBuilderFromMessage(t5);
        FieldSet<ET> mutableExtensions = jVar.getMutableExtensions(t5);
        while (k0Var.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!parseMessageSetItemOrUnknownField(k0Var, extensionRegistryLite, jVar, mutableExtensions, r0Var, builderFromMessage)) {
                    return;
                }
            } finally {
                r0Var.setBuilderToMessage(t5, builderFromMessage);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> boolean parseMessageSetItemOrUnknownField(k0 k0Var, ExtensionRegistryLite extensionRegistryLite, j<ET> jVar, FieldSet<ET> fieldSet, r0<UT, UB> r0Var, UB ub) throws IOException {
        int tag = k0Var.getTag();
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.getTagWireType(tag) == 2) {
                Object objFindExtensionByNumber = jVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, WireFormat.getTagFieldNumber(tag));
                if (objFindExtensionByNumber != null) {
                    jVar.parseLengthPrefixedMessageSetItem(k0Var, objFindExtensionByNumber, extensionRegistryLite, fieldSet);
                    return true;
                }
                return r0Var.mergeOneFieldFrom(ub, k0Var);
            }
            return k0Var.skipField();
        }
        Object objFindExtensionByNumber2 = null;
        int uInt32 = 0;
        ByteString bytes = null;
        while (k0Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = k0Var.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                uInt32 = k0Var.readUInt32();
                objFindExtensionByNumber2 = jVar.findExtensionByNumber(extensionRegistryLite, this.defaultInstance, uInt32);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (objFindExtensionByNumber2 != null) {
                    jVar.parseLengthPrefixedMessageSetItem(k0Var, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
                } else {
                    bytes = k0Var.readBytes();
                }
            } else if (!k0Var.skipField()) {
                break;
            }
        }
        if (k0Var.getTag() == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            if (bytes != null) {
                if (objFindExtensionByNumber2 != null) {
                    jVar.parseMessageSetItem(bytes, objFindExtensionByNumber2, extensionRegistryLite, fieldSet);
                } else {
                    r0Var.addLengthDelimited(ub, uInt32, bytes);
                }
            }
            return true;
        }
        throw InvalidProtocolBufferException.invalidEndTag();
    }

    private <UT, UB> void writeUnknownFieldsHelper(r0<UT, UB> r0Var, T t5, Writer writer) throws IOException {
        r0Var.writeAsMessageSetTo(r0Var.getFromMessage(t5), writer);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb A[EDGE_INSN: B:58:0x00cb->B:34:0x00cb BREAK  A[LOOP:1: B:18:0x006d->B:61:0x006d], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, byte[] bArr, int i10, int i11, c.b bVar) throws IOException {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t5;
        UnknownFieldSetLite unknownFieldSetLiteNewInstance = generatedMessageLite.unknownFields;
        if (unknownFieldSetLiteNewInstance == UnknownFieldSetLite.getDefaultInstance()) {
            unknownFieldSetLiteNewInstance = UnknownFieldSetLite.newInstance();
            generatedMessageLite.unknownFields = unknownFieldSetLiteNewInstance;
        }
        FieldSet<GeneratedMessageLite.b> fieldSetEnsureExtensionsAreMutable = ((GeneratedMessageLite.ExtendableMessage) t5).ensureExtensionsAreMutable();
        GeneratedMessageLite.GeneratedExtension generatedExtension = null;
        while (i10 < i11) {
            int iDecodeVarint32 = c.decodeVarint32(bArr, i10, bVar);
            int i12 = bVar.int1;
            if (i12 == WireFormat.MESSAGE_SET_ITEM_TAG) {
                int i13 = 0;
                ByteString byteString = null;
                while (iDecodeVarint32 < i11) {
                    iDecodeVarint32 = c.decodeVarint32(bArr, iDecodeVarint32, bVar);
                    int i14 = bVar.int1;
                    int tagFieldNumber = WireFormat.getTagFieldNumber(i14);
                    int tagWireType = WireFormat.getTagWireType(i14);
                    if (tagFieldNumber != 2) {
                        if (tagFieldNumber == 3) {
                            if (generatedExtension != null) {
                                iDecodeVarint32 = c.decodeMessageField(h0.getInstance().schemaFor((Class) generatedExtension.getMessageDefaultInstance().getClass()), bArr, iDecodeVarint32, i11, bVar);
                                fieldSetEnsureExtensionsAreMutable.setField(generatedExtension.descriptor, bVar.object1);
                            } else if (tagWireType == 2) {
                                iDecodeVarint32 = c.decodeBytes(bArr, iDecodeVarint32, bVar);
                                byteString = (ByteString) bVar.object1;
                            }
                        }
                        if (i14 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                        } else {
                            iDecodeVarint32 = c.skipField(i14, bArr, iDecodeVarint32, i11, bVar);
                        }
                    } else if (tagWireType == 0) {
                        iDecodeVarint32 = c.decodeVarint32(bArr, iDecodeVarint32, bVar);
                        i13 = bVar.int1;
                        generatedExtension = (GeneratedMessageLite.GeneratedExtension) this.extensionSchema.findExtensionByNumber(bVar.extensionRegistry, this.defaultInstance, i13);
                    } else {
                        if (i14 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                            break;
                        }
                        iDecodeVarint32 = c.skipField(i14, bArr, iDecodeVarint32, i11, bVar);
                    }
                }
                if (byteString != null) {
                    unknownFieldSetLiteNewInstance.storeField(WireFormat.makeTag(i13, 2), byteString);
                }
                i10 = iDecodeVarint32;
            } else if (WireFormat.getTagWireType(i12) == 2) {
                GeneratedMessageLite.GeneratedExtension generatedExtension2 = (GeneratedMessageLite.GeneratedExtension) this.extensionSchema.findExtensionByNumber(bVar.extensionRegistry, this.defaultInstance, WireFormat.getTagFieldNumber(i12));
                if (generatedExtension2 != null) {
                    i10 = c.decodeMessageField(h0.getInstance().schemaFor((Class) generatedExtension2.getMessageDefaultInstance().getClass()), bArr, iDecodeVarint32, i11, bVar);
                    fieldSetEnsureExtensionsAreMutable.setField(generatedExtension2.descriptor, bVar.object1);
                } else {
                    i10 = c.decodeUnknownField(i12, bArr, iDecodeVarint32, i11, unknownFieldSetLiteNewInstance, bVar);
                }
                generatedExtension = generatedExtension2;
            } else {
                i10 = c.skipField(i12, bArr, iDecodeVarint32, i11, bVar);
            }
        }
        if (i10 != i11) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override // com.google.protobuf.m0
    public void mergeFrom(T t5, k0 k0Var, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        mergeFromHelper(this.unknownFieldSchema, this.extensionSchema, t5, k0Var, extensionRegistryLite);
    }
}
