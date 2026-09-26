package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public enum NullValue implements Internal.EnumLite {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);

    public static final int NULL_VALUE_VALUE = 0;
    private static final Internal.EnumLiteMap<NullValue> internalValueMap = new Internal.EnumLiteMap<NullValue>() { // from class: androidx.datastore.preferences.protobuf.NullValue.1
        @Override // androidx.datastore.preferences.protobuf.Internal.EnumLiteMap
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NullValue findValueByNumber(int i10) {
            return NullValue.a(i10);
        }
    };
    private final int value;

    public static NullValue a(int i10) {
        if (i10 != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    private static final class NullValueVerifier implements Internal.EnumVerifier {
        static final Internal.EnumVerifier INSTANCE = new NullValueVerifier();

        private NullValueVerifier() {
        }

        @Override // androidx.datastore.preferences.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i10) {
            if (NullValue.a(i10) != null) {
                return true;
            }
            return false;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    NullValue(int i10) {
        this.value = i10;
    }
}
