package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class CodedOutputStreamWriter implements Writer {
    private final CodedOutputStream output;

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void d(int i10, List<?> list, Schema schema) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            e(i10, list.get(i11), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void f(int i10, List<?> list, Schema schema) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            b(i10, list.get(i11), schema);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBoolList(int i10, List<Boolean> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeBool(i10, list.get(i11).booleanValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iM = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iM += CodedOutputStream.m(list.get(i12).booleanValue());
        }
        this.output.S0(iM);
        while (i11 < list.size()) {
            this.output.s0(list.get(i11).booleanValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBytesList(int i10, List<ByteString> list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.output.a(i10, list.get(i11));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDoubleList(int i10, List<Double> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeDouble(i10, list.get(i11).doubleValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iR = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iR += CodedOutputStream.r(list.get(i12).doubleValue());
        }
        this.output.S0(iR);
        while (i11 < list.size()) {
            this.output.w0(list.get(i11).doubleValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnumList(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeEnum(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iT = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iT += CodedOutputStream.t(list.get(i12).intValue());
        }
        this.output.S0(iT);
        while (i11 < list.size()) {
            this.output.x0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32List(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeFixed32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iV = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iV += CodedOutputStream.v(list.get(i12).intValue());
        }
        this.output.S0(iV);
        while (i11 < list.size()) {
            this.output.y0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64List(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeFixed64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iX = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iX += CodedOutputStream.x(list.get(i12).longValue());
        }
        this.output.S0(iX);
        while (i11 < list.size()) {
            this.output.z0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloatList(int i10, List<Float> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeFloat(i10, list.get(i11).floatValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iZ = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iZ += CodedOutputStream.z(list.get(i12).floatValue());
        }
        this.output.S0(iZ);
        while (i11 < list.size()) {
            this.output.A0(list.get(i11).floatValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iE = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iE += CodedOutputStream.E(list.get(i12).intValue());
        }
        this.output.S0(iE);
        while (i11 < list.size()) {
            this.output.F0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iG = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iG += CodedOutputStream.G(list.get(i12).longValue());
        }
        this.output.S0(iG);
        while (i11 < list.size()) {
            this.output.G0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32List(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeSFixed32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iU = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iU += CodedOutputStream.U(list.get(i12).intValue());
        }
        this.output.S0(iU);
        while (i11 < list.size()) {
            this.output.M0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64List(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeSFixed64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iW = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iW += CodedOutputStream.W(list.get(i12).longValue());
        }
        this.output.S0(iW);
        while (i11 < list.size()) {
            this.output.N0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeSInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iY = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iY += CodedOutputStream.Y(list.get(i12).intValue());
        }
        this.output.S0(iY);
        while (i11 < list.size()) {
            this.output.O0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeSInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iA0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iA0 += CodedOutputStream.a0(list.get(i12).longValue());
        }
        this.output.S0(iA0);
        while (i11 < list.size()) {
            this.output.P0(list.get(i11).longValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32List(int i10, List<Integer> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeUInt32(i10, list.get(i11).intValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iF0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iF0 += CodedOutputStream.f0(list.get(i12).intValue());
        }
        this.output.S0(iF0);
        while (i11 < list.size()) {
            this.output.S0(list.get(i11).intValue());
            i11++;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64List(int i10, List<Long> list, boolean z6) throws IOException {
        int i11 = 0;
        if (!z6) {
            while (i11 < list.size()) {
                this.output.writeUInt64(i10, list.get(i11).longValue());
                i11++;
            }
            return;
        }
        this.output.R0(i10, 2);
        int iH0 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            iH0 += CodedOutputStream.h0(list.get(i12).longValue());
        }
        this.output.S0(iH0);
        while (i11 < list.size()) {
            this.output.T0(list.get(i11).longValue());
            i11++;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.CodedOutputStreamWriter$1, reason: invalid class name */
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT32.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT32.ordinal()] = 5;
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
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SFIXED64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.SINT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.UINT64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$FieldType[WireFormat.FieldType.STRING.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static CodedOutputStreamWriter g(CodedOutputStream codedOutputStream) {
        CodedOutputStreamWriter codedOutputStreamWriter = codedOutputStream.wrapper;
        return codedOutputStreamWriter != null ? codedOutputStreamWriter : new CodedOutputStreamWriter(codedOutputStream);
    }

    private <V> void h(int i10, boolean z6, V v5, MapEntryLite.Metadata<Boolean, V> metadata) throws IOException {
        this.output.R0(i10, 2);
        this.output.S0(MapEntryLite.b(metadata, Boolean.valueOf(z6), v5));
        MapEntryLite.e(this.output, metadata, Boolean.valueOf(z6), v5);
    }

    private <K, V> void k(int i10, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        switch (AnonymousClass1.$SwitchMap$com$google$protobuf$WireFormat$FieldType[metadata.keyType.ordinal()]) {
            case 1:
                V v5 = map.get(Boolean.FALSE);
                if (v5 != null) {
                    h(i10, false, v5, metadata);
                }
                V v6 = map.get(Boolean.TRUE);
                if (v6 != null) {
                    h(i10, true, v6, metadata);
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                i(i10, metadata, map);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                j(i10, metadata, map);
                return;
            case 12:
                l(i10, metadata, map);
                return;
            default:
                throw new IllegalArgumentException("does not support key type: " + metadata.keyType);
        }
    }

    private void m(int i10, Object obj) throws IOException {
        if (obj instanceof String) {
            this.output.writeString(i10, (String) obj);
        } else {
            this.output.a(i10, (ByteString) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void a(int i10, ByteString byteString) throws IOException {
        this.output.a(i10, byteString);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void b(int i10, Object obj, Schema schema) throws IOException {
        this.output.I0(i10, (MessageLite) obj, schema);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public <K, V> void c(int i10, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException {
        if (this.output.m0()) {
            k(i10, metadata, map);
            return;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.output.R0(i10, 2);
            this.output.S0(MapEntryLite.b(metadata, entry.getKey(), entry.getValue()));
            MapEntryLite.e(this.output, metadata, entry.getKey(), entry.getValue());
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void e(int i10, Object obj, Schema schema) throws IOException {
        this.output.C0(i10, (MessageLite) obj, schema);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public Writer.FieldOrder fieldOrder() {
        return Writer.FieldOrder.ASCENDING;
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeBool(int i10, boolean z6) throws IOException {
        this.output.writeBool(i10, z6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeDouble(int i10, double d) throws IOException {
        this.output.writeDouble(i10, d);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEndGroup(int i10) throws IOException {
        this.output.R0(i10, 4);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeEnum(int i10, int i11) throws IOException {
        this.output.writeEnum(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed32(int i10, int i11) throws IOException {
        this.output.writeFixed32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFixed64(int i10, long j6) throws IOException {
        this.output.writeFixed64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeFloat(int i10, float f) throws IOException {
        this.output.writeFloat(i10, f);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt32(int i10, int i11) throws IOException {
        this.output.writeInt32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeInt64(int i10, long j6) throws IOException {
        this.output.writeInt64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeMessage(int i10, Object obj) throws IOException {
        this.output.H0(i10, (MessageLite) obj);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public final void writeMessageSetItem(int i10, Object obj) throws IOException {
        if (obj instanceof ByteString) {
            this.output.L0(i10, (ByteString) obj);
        } else {
            this.output.K0(i10, (MessageLite) obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed32(int i10, int i11) throws IOException {
        this.output.writeSFixed32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSFixed64(int i10, long j6) throws IOException {
        this.output.writeSFixed64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt32(int i10, int i11) throws IOException {
        this.output.writeSInt32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeSInt64(int i10, long j6) throws IOException {
        this.output.writeSInt64(i10, j6);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStartGroup(int i10) throws IOException {
        this.output.R0(i10, 3);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeString(int i10, String str) throws IOException {
        this.output.writeString(i10, str);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeStringList(int i10, List<String> list) throws IOException {
        int i11 = 0;
        if (!(list instanceof LazyStringList)) {
            while (i11 < list.size()) {
                this.output.writeString(i10, list.get(i11));
                i11++;
            }
        } else {
            LazyStringList lazyStringList = (LazyStringList) list;
            while (i11 < list.size()) {
                m(i10, lazyStringList.getRaw(i11));
                i11++;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt32(int i10, int i11) throws IOException {
        this.output.writeUInt32(i10, i11);
    }

    @Override // androidx.datastore.preferences.protobuf.Writer
    public void writeUInt64(int i10, long j6) throws IOException {
        this.output.writeUInt64(i10, j6);
    }

    private CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        CodedOutputStream codedOutputStream2 = (CodedOutputStream) Internal.b(codedOutputStream, "output");
        this.output = codedOutputStream2;
        codedOutputStream2.wrapper = this;
    }

    private <V> void i(int i10, MapEntryLite.Metadata<Integer, V> metadata, Map<Integer, V> map) throws IOException {
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            iArr[i11] = it.next().intValue();
            i11++;
        }
        Arrays.sort(iArr);
        for (int i12 = 0; i12 < size; i12++) {
            int i13 = iArr[i12];
            V v5 = map.get(Integer.valueOf(i13));
            this.output.R0(i10, 2);
            this.output.S0(MapEntryLite.b(metadata, Integer.valueOf(i13), v5));
            MapEntryLite.e(this.output, metadata, Integer.valueOf(i13), v5);
        }
    }

    private <V> void j(int i10, MapEntryLite.Metadata<Long, V> metadata, Map<Long, V> map) throws IOException {
        int size = map.size();
        long[] jArr = new long[size];
        Iterator<Long> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            jArr[i11] = it.next().longValue();
            i11++;
        }
        Arrays.sort(jArr);
        for (int i12 = 0; i12 < size; i12++) {
            long j6 = jArr[i12];
            V v5 = map.get(Long.valueOf(j6));
            this.output.R0(i10, 2);
            this.output.S0(MapEntryLite.b(metadata, Long.valueOf(j6), v5));
            MapEntryLite.e(this.output, metadata, Long.valueOf(j6), v5);
        }
    }

    private <V> void l(int i10, MapEntryLite.Metadata<String, V> metadata, Map<String, V> map) throws IOException {
        int size = map.size();
        String[] strArr = new String[size];
        Iterator<String> it = map.keySet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            strArr[i11] = it.next();
            i11++;
        }
        Arrays.sort(strArr);
        for (int i12 = 0; i12 < size; i12++) {
            String str = strArr[i12];
            V v5 = map.get(str);
            this.output.R0(i10, 2);
            this.output.S0(MapEntryLite.b(metadata, str, v5));
            MapEntryLite.e(this.output, metadata, str, v5);
        }
    }
}
