package com.google.protobuf;

import java.io.IOException;
import java.util.AbstractMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class MapEntryLite<K, V> {
    private static final int KEY_FIELD_NUMBER = 1;
    private static final int VALUE_FIELD_NUMBER = 2;
    private final K key;
    private final b<K, V> metadata;
    private final V value;

    private MapEntryLite(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
        this.metadata = new b<>(fieldType, k, fieldType2, v5);
        this.key = k;
        this.value = v5;
    }

    public K getKey() {
        return this.key;
    }

    b<K, V> getMetadata() {
        return this.metadata;
    }

    public V getValue() {
        return this.value;
    }

    public Map.Entry<K, V> parseEntry(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return parseEntry(byteString.newCodedInput(), this.metadata, extensionRegistryLite);
    }

    public void serializeTo(CodedOutputStream codedOutputStream, int i10, K k, V v5) throws IOException {
        codedOutputStream.writeTag(i10, 2);
        codedOutputStream.writeUInt32NoTag(computeSerializedSize(this.metadata, k, v5));
        writeTo(codedOutputStream, this.metadata, k, v5);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$FieldType = iArr;
            try {
                iArr[WireFormat.FieldType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static class b<K, V> {
        public final K defaultKey;
        public final V defaultValue;
        public final WireFormat.FieldType keyType;
        public final WireFormat.FieldType valueType;

        public b(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
            this.keyType = fieldType;
            this.defaultKey = k;
            this.valueType = fieldType2;
            this.defaultValue = v5;
        }
    }

    static <K, V> int computeSerializedSize(b<K, V> bVar, K k, V v5) {
        return FieldSet.computeElementSize(bVar.keyType, 1, k) + FieldSet.computeElementSize(bVar.valueType, 2, v5);
    }

    public static <K, V> MapEntryLite<K, V> newDefaultInstance(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
        return new MapEntryLite<>(fieldType, k, fieldType2, v5);
    }

    static <K, V> Map.Entry<K, V> parseEntry(CodedInputStream codedInputStream, b<K, V> bVar, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        Object field = bVar.defaultKey;
        Object field2 = bVar.defaultValue;
        while (true) {
            int tag = codedInputStream.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == WireFormat.makeTag(1, bVar.keyType.getWireType())) {
                field = parseField(codedInputStream, extensionRegistryLite, bVar.keyType, field);
            } else if (tag == WireFormat.makeTag(2, bVar.valueType.getWireType())) {
                field2 = parseField(codedInputStream, extensionRegistryLite, bVar.valueType, field2);
            } else if (!codedInputStream.skipField(tag)) {
                break;
            }
        }
        return new AbstractMap.SimpleImmutableEntry(field, field2);
    }

    static <T> T parseField(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite, WireFormat.FieldType fieldType, T t5) throws IOException {
        int i10 = a.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()];
        if (i10 == 1) {
            MessageLite.Builder builder = ((MessageLite) t5).toBuilder();
            codedInputStream.readMessage(builder, extensionRegistryLite);
            return (T) builder.buildPartial();
        }
        if (i10 == 2) {
            return (T) Integer.valueOf(codedInputStream.readEnum());
        }
        if (i10 != 3) {
            return (T) FieldSet.readPrimitiveField(codedInputStream, fieldType, true);
        }
        throw new RuntimeException("Groups are not allowed in maps.");
    }

    static <K, V> void writeTo(CodedOutputStream codedOutputStream, b<K, V> bVar, K k, V v5) throws IOException {
        FieldSet.writeElement(codedOutputStream, bVar.keyType, 1, k);
        FieldSet.writeElement(codedOutputStream, bVar.valueType, 2, v5);
    }

    private MapEntryLite(b<K, V> bVar, K k, V v5) {
        this.metadata = bVar;
        this.key = k;
        this.value = v5;
    }

    public int computeMessageSize(int i10, K k, V v5) {
        return CodedOutputStream.computeTagSize(i10) + CodedOutputStream.computeLengthDelimitedFieldSize(computeSerializedSize(this.metadata, k, v5));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void parseInto(MapFieldLite<K, V> mapFieldLite, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        int iPushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
        b<K, V> bVar = this.metadata;
        Object field = bVar.defaultKey;
        Object field2 = bVar.defaultValue;
        while (true) {
            int tag = codedInputStream.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == WireFormat.makeTag(1, this.metadata.keyType.getWireType())) {
                field = parseField(codedInputStream, extensionRegistryLite, this.metadata.keyType, field);
            } else if (tag == WireFormat.makeTag(2, this.metadata.valueType.getWireType())) {
                field2 = parseField(codedInputStream, extensionRegistryLite, this.metadata.valueType, field2);
            } else if (!codedInputStream.skipField(tag)) {
                break;
            }
        }
        codedInputStream.checkLastTagWas(0);
        codedInputStream.popLimit(iPushLimit);
        mapFieldLite.put(field, field2);
    }
}
