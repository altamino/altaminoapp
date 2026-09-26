package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes7.dex */
final class SchemaUtil {
    private static final int DEFAULT_LOOK_UP_START_NUMBER = 40;
    private static final Class<?> GENERATED_MESSAGE_CLASS = B();
    private static final UnknownFieldSchema<?, ?> PROTO2_UNKNOWN_FIELD_SET_SCHEMA = C(false);
    private static final UnknownFieldSchema<?, ?> PROTO3_UNKNOWN_FIELD_SET_SCHEMA = C(true);
    private static final UnknownFieldSchema<?, ?> UNKNOWN_FIELD_SET_LITE_SCHEMA = new UnknownFieldSetLiteSchema();

    private static UnknownFieldSchema<?, ?> C(boolean z6) {
        try {
            Class<?> clsD = D();
            if (clsD == null) {
                return null;
            }
            return (UnknownFieldSchema) clsD.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z6));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static UnknownFieldSchema<?, ?> H() {
        return PROTO2_UNKNOWN_FIELD_SET_SCHEMA;
    }

    public static UnknownFieldSchema<?, ?> I() {
        return PROTO3_UNKNOWN_FIELD_SET_SCHEMA;
    }

    public static UnknownFieldSchema<?, ?> M() {
        return UNKNOWN_FIELD_SET_LITE_SCHEMA;
    }

    static <UT, UB> UB A(int i10, List<Integer> list, Internal.EnumVerifier enumVerifier, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        if (enumVerifier == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (enumVerifier.isInRange(iIntValue)) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) L(i10, iIntValue, ub, unknownFieldSchema);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (!enumVerifier.isInRange(iIntValue2)) {
                    ub = (UB) L(i10, iIntValue2, ub, unknownFieldSchema);
                    it.remove();
                }
            }
        }
        return ub;
    }

    private static Class<?> B() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> D() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void J(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = GENERATED_MESSAGE_CLASS) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    static boolean K(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static <UT, UB> UB L(int i10, int i11, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        if (ub == null) {
            ub = unknownFieldSchema.n();
        }
        unknownFieldSchema.e(ub, i10, i11);
        return ub;
    }

    public static void N(int i10, List<Boolean> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBoolList(i10, list, z6);
    }

    public static void O(int i10, List<ByteString> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeBytesList(i10, list);
    }

    public static void P(int i10, List<Double> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeDoubleList(i10, list, z6);
    }

    public static void Q(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeEnumList(i10, list, z6);
    }

    public static void R(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed32List(i10, list, z6);
    }

    public static void S(int i10, List<Long> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFixed64List(i10, list, z6);
    }

    public static void T(int i10, List<Float> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeFloatList(i10, list, z6);
    }

    public static void U(int i10, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.d(i10, list, schema);
    }

    public static void V(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt32List(i10, list, z6);
    }

    public static void W(int i10, List<Long> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeInt64List(i10, list, z6);
    }

    public static void X(int i10, List<?> list, Writer writer, Schema schema) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.f(i10, list, schema);
    }

    public static void Y(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed32List(i10, list, z6);
    }

    public static void Z(int i10, List<Long> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSFixed64List(i10, list, z6);
    }

    public static void a0(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt32List(i10, list, z6);
    }

    public static void b0(int i10, List<Long> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeSInt64List(i10, list, z6);
    }

    public static void c0(int i10, List<String> list, Writer writer) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeStringList(i10, list);
    }

    public static void d0(int i10, List<Integer> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt32List(i10, list, z6);
    }

    public static void e0(int i10, List<Long> list, Writer writer, boolean z6) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        writer.writeUInt64List(i10, list, z6);
    }

    static int o(int i10, Object obj, Schema schema) {
        return obj instanceof LazyFieldLite ? CodedOutputStream.I(i10, (LazyFieldLite) obj) : CodedOutputStream.N(i10, (MessageLite) obj, schema);
    }

    static <UT, UB> UB z(int i10, List<Integer> list, Internal.EnumLiteMap<?> enumLiteMap, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) {
        if (enumLiteMap == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                int iIntValue = list.get(i12).intValue();
                if (enumLiteMap.findValueByNumber(iIntValue) != null) {
                    if (i12 != i11) {
                        list.set(i11, Integer.valueOf(iIntValue));
                    }
                    i11++;
                } else {
                    ub = (UB) L(i10, iIntValue, ub, unknownFieldSchema);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                if (enumLiteMap.findValueByNumber(iIntValue2) == null) {
                    ub = (UB) L(i10, iIntValue2, ub, unknownFieldSchema);
                    it.remove();
                }
            }
        }
        return ub;
    }

    private SchemaUtil() {
    }

    static <T, FT extends FieldSet.FieldDescriptorLite<FT>> void E(ExtensionSchema<FT> extensionSchema, T t5, T t10) {
        FieldSet<T> fieldSetC = extensionSchema.c(t10);
        if (!fieldSetC.n()) {
            extensionSchema.d(t5).u(fieldSetC);
        }
    }

    static <T> void F(MapFieldSchema mapFieldSchema, T t5, T t10, long j6) {
        UnsafeUtil.V(t5, j6, mapFieldSchema.mergeFrom(UnsafeUtil.F(t5, j6), UnsafeUtil.F(t10, j6)));
    }

    static <T, UT, UB> void G(UnknownFieldSchema<UT, UB> unknownFieldSchema, T t5, T t10) {
        unknownFieldSchema.p(t5, unknownFieldSchema.k(unknownFieldSchema.g(t5), unknownFieldSchema.g(t10)));
    }

    static int a(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(size);
        }
        return size * CodedOutputStream.l(i10, true);
    }

    static int b(List<?> list) {
        return list.size();
    }

    static int c(int i10, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD0 = size * CodedOutputStream.d0(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            iD0 += CodedOutputStream.p(list.get(i11));
        }
        return iD0;
    }

    static int d(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iE = e(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iE);
        }
        return iE + (size * CodedOutputStream.d0(i10));
    }

    static int e(List<Integer> list) {
        int iT;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            iT = 0;
            while (i10 < size) {
                iT += CodedOutputStream.t(intArrayList.getInt(i10));
                i10++;
            }
        } else {
            iT = 0;
            while (i10 < size) {
                iT += CodedOutputStream.t(list.get(i10).intValue());
                i10++;
            }
        }
        return iT;
    }

    static int f(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(size * 4);
        }
        return size * CodedOutputStream.u(i10, 0);
    }

    static int g(List<?> list) {
        return list.size() * 4;
    }

    static int h(int i10, List<?> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(size * 8);
        }
        return size * CodedOutputStream.w(i10, 0L);
    }

    static int i(List<?> list) {
        return list.size() * 8;
    }

    static int j(int i10, List<MessageLite> list, Schema schema) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iA = 0;
        for (int i11 = 0; i11 < size; i11++) {
            iA += CodedOutputStream.A(i10, list.get(i11), schema);
        }
        return iA;
    }

    static int k(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iL = l(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iL);
        }
        return iL + (size * CodedOutputStream.d0(i10));
    }

    static int l(List<Integer> list) {
        int iE;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            iE = 0;
            while (i10 < size) {
                iE += CodedOutputStream.E(intArrayList.getInt(i10));
                i10++;
            }
        } else {
            iE = 0;
            while (i10 < size) {
                iE += CodedOutputStream.E(list.get(i10).intValue());
                i10++;
            }
        }
        return iE;
    }

    static int m(int i10, List<Long> list, boolean z6) {
        if (list.size() == 0) {
            return 0;
        }
        int iN = n(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iN);
        }
        return iN + (list.size() * CodedOutputStream.d0(i10));
    }

    static int n(List<Long> list) {
        int iG;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            iG = 0;
            while (i10 < size) {
                iG += CodedOutputStream.G(longArrayList.getLong(i10));
                i10++;
            }
        } else {
            iG = 0;
            while (i10 < size) {
                iG += CodedOutputStream.G(list.get(i10).longValue());
                i10++;
            }
        }
        return iG;
    }

    static int p(int i10, List<?> list, Schema schema) {
        int iP;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iD0 = CodedOutputStream.d0(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof LazyFieldLite) {
                iP = CodedOutputStream.J((LazyFieldLite) obj);
            } else {
                iP = CodedOutputStream.P((MessageLite) obj, schema);
            }
            iD0 += iP;
        }
        return iD0;
    }

    static int q(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iR = r(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iR);
        }
        return iR + (size * CodedOutputStream.d0(i10));
    }

    static int r(List<Integer> list) {
        int iY;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            iY = 0;
            while (i10 < size) {
                iY += CodedOutputStream.Y(intArrayList.getInt(i10));
                i10++;
            }
        } else {
            iY = 0;
            while (i10 < size) {
                iY += CodedOutputStream.Y(list.get(i10).intValue());
                i10++;
            }
        }
        return iY;
    }

    static int s(int i10, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iT = t(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iT);
        }
        return iT + (size * CodedOutputStream.d0(i10));
    }

    static int t(List<Long> list) {
        int iA0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            iA0 = 0;
            while (i10 < size) {
                iA0 += CodedOutputStream.a0(longArrayList.getLong(i10));
                i10++;
            }
        } else {
            iA0 = 0;
            while (i10 < size) {
                iA0 += CodedOutputStream.a0(list.get(i10).longValue());
                i10++;
            }
        }
        return iA0;
    }

    static int u(int i10, List<?> list) {
        int iC0;
        int iC1;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int iD0 = CodedOutputStream.d0(i10) * size;
        if (list instanceof LazyStringList) {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i11 < size) {
                Object raw = lazyStringList.getRaw(i11);
                if (raw instanceof ByteString) {
                    iC1 = CodedOutputStream.p((ByteString) raw);
                } else {
                    iC1 = CodedOutputStream.c0((String) raw);
                }
                iD0 += iC1;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof ByteString) {
                    iC0 = CodedOutputStream.p((ByteString) obj);
                } else {
                    iC0 = CodedOutputStream.c0((String) obj);
                }
                iD0 += iC0;
                i11++;
            }
        }
        return iD0;
    }

    static int v(int i10, List<Integer> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iW = w(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iW);
        }
        return iW + (size * CodedOutputStream.d0(i10));
    }

    static int w(List<Integer> list) {
        int iF0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof IntArrayList) {
            IntArrayList intArrayList = (IntArrayList) list;
            iF0 = 0;
            while (i10 < size) {
                iF0 += CodedOutputStream.f0(intArrayList.getInt(i10));
                i10++;
            }
        } else {
            iF0 = 0;
            while (i10 < size) {
                iF0 += CodedOutputStream.f0(list.get(i10).intValue());
                i10++;
            }
        }
        return iF0;
    }

    static int x(int i10, List<Long> list, boolean z6) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iY = y(list);
        if (z6) {
            return CodedOutputStream.d0(i10) + CodedOutputStream.K(iY);
        }
        return iY + (size * CodedOutputStream.d0(i10));
    }

    static int y(List<Long> list) {
        int iH0;
        int size = list.size();
        int i10 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof LongArrayList) {
            LongArrayList longArrayList = (LongArrayList) list;
            iH0 = 0;
            while (i10 < size) {
                iH0 += CodedOutputStream.h0(longArrayList.getLong(i10));
                i10++;
            }
        } else {
            iH0 = 0;
            while (i10 < size) {
                iH0 += CodedOutputStream.h0(list.get(i10).longValue());
                i10++;
            }
        }
        return iH0;
    }
}
