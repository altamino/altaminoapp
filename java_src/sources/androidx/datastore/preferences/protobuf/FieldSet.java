package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
final class FieldSet<T extends FieldDescriptorLite<T>> {
    private static final int DEFAULT_FIELD_MAP_ARRAY_SIZE = 16;
    private static final FieldSet DEFAULT_INSTANCE = new FieldSet(true);
    private final SmallSortedMap<T, Object> fields;
    private boolean hasLazyField;
    private boolean isImmutable;

    static final class Builder<T extends FieldDescriptorLite<T>> {
        private SmallSortedMap<T, Object> fields;
        private boolean hasLazyField;
        private boolean hasNestedBuilders;
        private boolean isMutable;

        private Builder() {
            this(SmallSortedMap.t(16));
        }

        private Builder(SmallSortedMap<T, Object> smallSortedMap) {
            this.fields = smallSortedMap;
            this.isMutable = true;
        }
    }

    public interface FieldDescriptorLite<T extends FieldDescriptorLite<T>> extends Comparable<T> {
        MessageLite.Builder g(MessageLite.Builder builder, MessageLite messageLite);

        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();
    }

    private FieldSet() {
        this.fields = SmallSortedMap.t(16);
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> h() {
        return DEFAULT_INSTANCE;
    }

    public int j() {
        int iK = 0;
        for (int i10 = 0; i10 < this.fields.n(); i10++) {
            iK += k(this.fields.m(i10));
        }
        Iterator it = this.fields.p().iterator();
        while (it.hasNext()) {
            iK += k((Map.Entry) it.next());
        }
        return iK;
    }

    public int l() {
        int iF = 0;
        for (int i10 = 0; i10 < this.fields.n(); i10++) {
            Map.Entry<K, Object> entryM = this.fields.m(i10);
            iF += f((FieldDescriptorLite) entryM.getKey(), entryM.getValue());
        }
        Iterator it = this.fields.p().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iF += f((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        return iF;
    }

    public boolean o() {
        return this.isImmutable;
    }

    public boolean p() {
        for (int i10 = 0; i10 < this.fields.n(); i10++) {
            if (!q(this.fields.m(i10))) {
                return false;
            }
        }
        Iterator it = this.fields.p().iterator();
        while (it.hasNext()) {
            if (!q((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public void u(FieldSet<T> fieldSet) {
        for (int i10 = 0; i10 < fieldSet.fields.n(); i10++) {
            v(fieldSet.fields.m(i10));
        }
        Iterator it = fieldSet.fields.p().iterator();
        while (it.hasNext()) {
            v((Map.Entry) it.next());
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.FieldSet$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$FieldType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    static void A(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.w0(((Double) obj).doubleValue());
                break;
            case 2:
                codedOutputStream.A0(((Float) obj).floatValue());
                break;
            case 3:
                codedOutputStream.G0(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.T0(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.F0(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.z0(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.y0(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.s0(((Boolean) obj).booleanValue());
                break;
            case 9:
                codedOutputStream.D0((MessageLite) obj);
                break;
            case 10:
                codedOutputStream.J0((MessageLite) obj);
                break;
            case 11:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.Q0((String) obj);
                } else {
                    codedOutputStream.v0((ByteString) obj);
                }
                break;
            case 12:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.t0((byte[]) obj);
                } else {
                    codedOutputStream.v0((ByteString) obj);
                }
                break;
            case 13:
                codedOutputStream.S0(((Integer) obj).intValue());
                break;
            case 14:
                codedOutputStream.M0(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.N0(((Long) obj).longValue());
                break;
            case 16:
                codedOutputStream.O0(((Integer) obj).intValue());
                break;
            case 17:
                codedOutputStream.P0(((Long) obj).longValue());
                break;
            case 18:
                if (!(obj instanceof Internal.EnumLite)) {
                    codedOutputStream.x0(((Integer) obj).intValue());
                } else {
                    codedOutputStream.x0(((Internal.EnumLite) obj).getNumber());
                }
                break;
        }
    }

    private static Object c(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    static int e(WireFormat.FieldType fieldType, Object obj) {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.r(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.z(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.G(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.h0(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.E(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.x(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.v(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.m(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.B((MessageLite) obj);
            case 10:
                return obj instanceof LazyField ? CodedOutputStream.J((LazyField) obj) : CodedOutputStream.O((MessageLite) obj);
            case 11:
                return obj instanceof ByteString ? CodedOutputStream.p((ByteString) obj) : CodedOutputStream.c0((String) obj);
            case 12:
                return obj instanceof ByteString ? CodedOutputStream.p((ByteString) obj) : CodedOutputStream.n((byte[]) obj);
            case 13:
                return CodedOutputStream.f0(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.U(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.W(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.Y(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.a0(((Long) obj).longValue());
            case 18:
                return obj instanceof Internal.EnumLite ? CodedOutputStream.t(((Internal.EnumLite) obj).getNumber()) : CodedOutputStream.t(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    static int m(WireFormat.FieldType fieldType, boolean z6) {
        if (z6) {
            return 2;
        }
        return fieldType.b();
    }

    public static <T extends FieldDescriptorLite<T>> FieldSet<T> w() {
        return new FieldSet<>();
    }

    static void z(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i10, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.B0(i10, (MessageLite) obj);
        } else {
            codedOutputStream.R0(i10, m(fieldType, false));
            A(codedOutputStream, fieldType, obj);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FieldSet) {
            return this.fields.equals(((FieldSet) obj).fields);
        }
        return false;
    }

    Iterator<Map.Entry<T, Object>> g() {
        return this.hasLazyField ? new LazyField.LazyIterator(this.fields.k().iterator()) : this.fields.k().iterator();
    }

    public int hashCode() {
        return this.fields.hashCode();
    }

    public Object i(T t5) {
        Object obj = this.fields.get(t5);
        return obj instanceof LazyField ? ((LazyField) obj).g() : obj;
    }

    boolean n() {
        return this.fields.isEmpty();
    }

    public Iterator<Map.Entry<T, Object>> s() {
        return this.hasLazyField ? new LazyField.LazyIterator(this.fields.entrySet().iterator()) : this.fields.entrySet().iterator();
    }

    public void t() {
        if (this.isImmutable) {
            return;
        }
        this.fields.s();
        this.isImmutable = true;
    }

    private FieldSet(boolean z6) {
        this(SmallSortedMap.t(0));
        t();
    }

    static int d(WireFormat.FieldType fieldType, int i10, Object obj) {
        int iD0 = CodedOutputStream.d0(i10);
        if (fieldType == WireFormat.FieldType.GROUP) {
            iD0 *= 2;
        }
        return iD0 + e(fieldType, obj);
    }

    public static int f(FieldDescriptorLite<?> fieldDescriptorLite, Object obj) {
        WireFormat.FieldType liteType = fieldDescriptorLite.getLiteType();
        int number = fieldDescriptorLite.getNumber();
        if (fieldDescriptorLite.isRepeated()) {
            int iD = 0;
            if (fieldDescriptorLite.isPacked()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    iD += e(liteType, it.next());
                }
                return CodedOutputStream.d0(number) + iD + CodedOutputStream.S(iD);
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                iD += d(liteType, number, it2.next());
            }
            return iD;
        }
        return d(liteType, number, obj);
    }

    private int k(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated() && !key.isPacked()) {
            if (value instanceof LazyField) {
                return CodedOutputStream.H(entry.getKey().getNumber(), (LazyField) value);
            }
            return CodedOutputStream.L(entry.getKey().getNumber(), (MessageLite) value);
        }
        return f(key, value);
    }

    private static <T extends FieldDescriptorLite<T>> boolean q(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            if (key.isRepeated()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((MessageLite) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof MessageLite) {
                    if (!((MessageLite) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof LazyField) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    private static boolean r(WireFormat.FieldType fieldType, Object obj) {
        Internal.a(obj);
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$JavaType[fieldType.a().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                if ((obj instanceof ByteString) || (obj instanceof byte[])) {
                    return true;
                }
                return false;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof Internal.EnumLite)) {
                    return true;
                }
                return false;
            case 9:
                if ((obj instanceof MessageLite) || (obj instanceof LazyField)) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    private void v(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof LazyField) {
            value = ((LazyField) value).g();
        }
        if (key.isRepeated()) {
            Object objI = i(key);
            if (objI == null) {
                objI = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objI).add(c(it.next()));
            }
            this.fields.put(key, objI);
            return;
        }
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            Object objI2 = i(key);
            if (objI2 == null) {
                this.fields.put(key, c(value));
                return;
            } else {
                this.fields.put(key, key.g(((MessageLite) objI2).toBuilder(), (MessageLite) value).build());
                return;
            }
        }
        this.fields.put(key, c(value));
    }

    private void y(WireFormat.FieldType fieldType, Object obj) {
        if (r(fieldType, obj)) {
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
    }

    public void a(T t5, Object obj) {
        List arrayList;
        if (t5.isRepeated()) {
            y(t5.getLiteType(), obj);
            Object objI = i(t5);
            if (objI == null) {
                arrayList = new ArrayList();
                this.fields.put(t5, arrayList);
            } else {
                arrayList = (List) objI;
            }
            arrayList.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FieldSet<T> clone() {
        FieldSet<T> fieldSetW = w();
        for (int i10 = 0; i10 < this.fields.n(); i10++) {
            Map.Entry<K, Object> entryM = this.fields.m(i10);
            fieldSetW.x((FieldDescriptorLite) entryM.getKey(), entryM.getValue());
        }
        Iterator it = this.fields.p().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            fieldSetW.x((FieldDescriptorLite) entry.getKey(), entry.getValue());
        }
        fieldSetW.hasLazyField = this.hasLazyField;
        return fieldSetW;
    }

    public void x(T t5, Object obj) {
        if (t5.isRepeated()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    y(t5.getLiteType(), it.next());
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            y(t5.getLiteType(), obj);
        }
        if (obj instanceof LazyField) {
            this.hasLazyField = true;
        }
        this.fields.put(t5, obj);
    }

    private FieldSet(SmallSortedMap<T, Object> smallSortedMap) {
        this.fields = smallSortedMap;
        t();
    }
}
