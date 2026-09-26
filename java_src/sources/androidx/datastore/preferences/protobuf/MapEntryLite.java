package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class MapEntryLite<K, V> {
    private static final int KEY_FIELD_NUMBER = 1;
    private static final int VALUE_FIELD_NUMBER = 2;
    private final K key;
    private final Metadata<K, V> metadata;
    private final V value;

    Metadata<K, V> c() {
        return this.metadata;
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.MapEntryLite$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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

    static class Metadata<K, V> {
        public final K defaultKey;
        public final V defaultValue;
        public final WireFormat.FieldType keyType;
        public final WireFormat.FieldType valueType;

        public Metadata(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
            this.keyType = fieldType;
            this.defaultKey = k;
            this.valueType = fieldType2;
            this.defaultValue = v5;
        }
    }

    static <K, V> int b(Metadata<K, V> metadata, K k, V v5) {
        return FieldSet.d(metadata.keyType, 1, k) + FieldSet.d(metadata.valueType, 2, v5);
    }

    public static <K, V> MapEntryLite<K, V> d(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
        return new MapEntryLite<>(fieldType, k, fieldType2, v5);
    }

    static <K, V> void e(CodedOutputStream codedOutputStream, Metadata<K, V> metadata, K k, V v5) throws IOException {
        FieldSet.z(codedOutputStream, metadata.keyType, 1, k);
        FieldSet.z(codedOutputStream, metadata.valueType, 2, v5);
    }

    private MapEntryLite(WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v5) {
        this.metadata = new Metadata<>(fieldType, k, fieldType2, v5);
        this.key = k;
        this.value = v5;
    }

    public int a(int i10, K k, V v5) {
        return CodedOutputStream.d0(i10) + CodedOutputStream.K(b(this.metadata, k, v5));
    }
}
