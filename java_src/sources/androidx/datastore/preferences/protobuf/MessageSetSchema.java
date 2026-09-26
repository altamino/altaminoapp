package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
final class MessageSetSchema<T> implements Schema<T> {
    private final MessageLite defaultInstance;
    private final ExtensionSchema<?> extensionSchema;
    private final boolean hasExtensions;
    private final UnknownFieldSchema<?, ?> unknownFieldSchema;

    /* JADX WARN: Code duplicated, block: B:33:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cb A[EDGE_INSN: B:58:0x00cb->B:34:0x00cb BREAK  A[LOOP:1: B:18:0x006d->B:61:0x006d], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.datastore.preferences.protobuf.Schema
    public void c(T t5, byte[] bArr, int i10, int i11, ArrayDecoders.Registers registers) throws IOException {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t5;
        UnknownFieldSetLite unknownFieldSetLiteL = generatedMessageLite.unknownFields;
        if (unknownFieldSetLiteL == UnknownFieldSetLite.e()) {
            unknownFieldSetLiteL = UnknownFieldSetLite.l();
            generatedMessageLite.unknownFields = unknownFieldSetLiteL;
        }
        FieldSet<GeneratedMessageLite.ExtensionDescriptor> fieldSetC = ((GeneratedMessageLite.ExtendableMessage) t5).C();
        GeneratedMessageLite.GeneratedExtension generatedExtension = null;
        while (i10 < i11) {
            int I = ArrayDecoders.I(bArr, i10, registers);
            int i12 = registers.int1;
            if (i12 == WireFormat.MESSAGE_SET_ITEM_TAG) {
                int i13 = 0;
                ByteString byteString = null;
                while (I < i11) {
                    I = ArrayDecoders.I(bArr, I, registers);
                    int i14 = registers.int1;
                    int iA = WireFormat.a(i14);
                    int iB = WireFormat.b(i14);
                    if (iA != 2) {
                        if (iA == 3) {
                            if (generatedExtension != null) {
                                I = ArrayDecoders.p(Protobuf.a().d(generatedExtension.b().getClass()), bArr, I, i11, registers);
                                fieldSetC.x(generatedExtension.descriptor, registers.object1);
                            } else if (iB == 2) {
                                I = ArrayDecoders.b(bArr, I, registers);
                                byteString = (ByteString) registers.object1;
                            }
                        }
                        if (i14 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                        } else {
                            I = ArrayDecoders.N(i14, bArr, I, i11, registers);
                        }
                    } else if (iB == 0) {
                        I = ArrayDecoders.I(bArr, I, registers);
                        i13 = registers.int1;
                        generatedExtension = (GeneratedMessageLite.GeneratedExtension) this.extensionSchema.b(registers.extensionRegistry, this.defaultInstance, i13);
                    } else {
                        if (i14 == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
                            break;
                            break;
                        }
                        I = ArrayDecoders.N(i14, bArr, I, i11, registers);
                    }
                }
                if (byteString != null) {
                    unknownFieldSetLiteL.n(WireFormat.c(i13, 2), byteString);
                }
                i10 = I;
            } else if (WireFormat.b(i12) == 2) {
                GeneratedMessageLite.GeneratedExtension generatedExtension2 = (GeneratedMessageLite.GeneratedExtension) this.extensionSchema.b(registers.extensionRegistry, this.defaultInstance, WireFormat.a(i12));
                if (generatedExtension2 != null) {
                    i10 = ArrayDecoders.p(Protobuf.a().d(generatedExtension2.b().getClass()), bArr, I, i11, registers);
                    fieldSetC.x(generatedExtension2.descriptor, registers.object1);
                } else {
                    i10 = ArrayDecoders.G(i12, bArr, I, i11, unknownFieldSetLiteL, registers);
                }
                generatedExtension = generatedExtension2;
            } else {
                i10 = ArrayDecoders.N(i12, bArr, I, i11, registers);
            }
        }
        if (i10 != i11) {
            throw InvalidProtocolBufferException.g();
        }
    }

    static <T> MessageSetSchema<T> f(UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MessageLite messageLite) {
        return new MessageSetSchema<>(unknownFieldSchema, extensionSchema, messageLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void a(T t5, Writer writer) throws IOException {
        Iterator itS = this.extensionSchema.c(t5).s();
        while (itS.hasNext()) {
            Map.Entry entry = (Map.Entry) itS.next();
            FieldSet.FieldDescriptorLite fieldDescriptorLite = (FieldSet.FieldDescriptorLite) entry.getKey();
            if (fieldDescriptorLite.getLiteJavaType() != WireFormat.JavaType.MESSAGE || fieldDescriptorLite.isRepeated() || fieldDescriptorLite.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof LazyField.LazyEntry) {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), ((LazyField.LazyEntry) entry).a().f());
            } else {
                writer.writeMessageSetItem(fieldDescriptorLite.getNumber(), entry.getValue());
            }
        }
        h(this.unknownFieldSchema, t5, writer);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void b(T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        e(this.unknownFieldSchema, this.extensionSchema, t5, reader, extensionRegistryLite);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public boolean equals(T t5, T t10) {
        if (!this.unknownFieldSchema.g(t5).equals(this.unknownFieldSchema.g(t10))) {
            return false;
        }
        if (this.hasExtensions) {
            return this.extensionSchema.c(t5).equals(this.extensionSchema.c(t10));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int getSerializedSize(T t5) {
        int iD = d(this.unknownFieldSchema, t5);
        return this.hasExtensions ? iD + this.extensionSchema.c(t5).j() : iD;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public int hashCode(T t5) {
        int iHashCode = this.unknownFieldSchema.g(t5).hashCode();
        return this.hasExtensions ? (iHashCode * 53) + this.extensionSchema.c(t5).hashCode() : iHashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean isInitialized(T t5) {
        return this.extensionSchema.c(t5).p();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void makeImmutable(T t5) {
        this.unknownFieldSchema.j(t5);
        this.extensionSchema.f(t5);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public void mergeFrom(T t5, T t10) {
        SchemaUtil.G(this.unknownFieldSchema, t5, t10);
        if (this.hasExtensions) {
            SchemaUtil.E(this.extensionSchema, t5, t10);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public T newInstance() {
        return (T) this.defaultInstance.newBuilderForType().buildPartial();
    }

    private MessageSetSchema(UnknownFieldSchema<?, ?> unknownFieldSchema, ExtensionSchema<?> extensionSchema, MessageLite messageLite) {
        this.unknownFieldSchema = unknownFieldSchema;
        this.hasExtensions = extensionSchema.e(messageLite);
        this.extensionSchema = extensionSchema;
        this.defaultInstance = messageLite;
    }

    private <UT, UB> int d(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t5) {
        return unknownFieldSchema.i(unknownFieldSchema.g(t5));
    }

    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> void e(UnknownFieldSchema<UT, UB> unknownFieldSchema, ExtensionSchema<ET> extensionSchema, T t5, Reader reader, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        UB ubF = unknownFieldSchema.f(t5);
        FieldSet<ET> fieldSetD = extensionSchema.d(t5);
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!g(reader, extensionRegistryLite, extensionSchema, fieldSetD, unknownFieldSchema, ubF)) {
                    return;
                }
            } finally {
                unknownFieldSchema.o(t5, ubF);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends FieldSet.FieldDescriptorLite<ET>> boolean g(Reader reader, ExtensionRegistryLite extensionRegistryLite, ExtensionSchema<ET> extensionSchema, FieldSet<ET> fieldSet, UnknownFieldSchema<UT, UB> unknownFieldSchema, UB ub) throws IOException {
        int tag = reader.getTag();
        if (tag != WireFormat.MESSAGE_SET_ITEM_TAG) {
            if (WireFormat.b(tag) == 2) {
                Object objB = extensionSchema.b(extensionRegistryLite, this.defaultInstance, WireFormat.a(tag));
                if (objB != null) {
                    extensionSchema.h(reader, objB, extensionRegistryLite, fieldSet);
                    return true;
                }
                return unknownFieldSchema.m(ub, reader);
            }
            return reader.skipField();
        }
        Object objB2 = null;
        int uInt32 = 0;
        ByteString bytes = null;
        while (reader.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                uInt32 = reader.readUInt32();
                objB2 = extensionSchema.b(extensionRegistryLite, this.defaultInstance, uInt32);
            } else if (tag2 == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                if (objB2 != null) {
                    extensionSchema.h(reader, objB2, extensionRegistryLite, fieldSet);
                } else {
                    bytes = reader.readBytes();
                }
            } else if (!reader.skipField()) {
                break;
            }
        }
        if (reader.getTag() == WireFormat.MESSAGE_SET_ITEM_END_TAG) {
            if (bytes != null) {
                if (objB2 != null) {
                    extensionSchema.i(bytes, objB2, extensionRegistryLite, fieldSet);
                } else {
                    unknownFieldSchema.d(ub, uInt32, bytes);
                }
            }
            return true;
        }
        throw InvalidProtocolBufferException.a();
    }

    private <UT, UB> void h(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t5, Writer writer) throws IOException {
        unknownFieldSchema.s(unknownFieldSchema.g(t5), writer);
    }
}
