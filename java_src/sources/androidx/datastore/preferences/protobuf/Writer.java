package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
interface Writer {

    public enum FieldOrder {
        ASCENDING,
        DESCENDING
    }

    void a(int i10, ByteString byteString) throws IOException;

    void b(int i10, Object obj, Schema schema) throws IOException;

    <K, V> void c(int i10, MapEntryLite.Metadata<K, V> metadata, Map<K, V> map) throws IOException;

    @Deprecated
    void d(int i10, List<?> list, Schema schema) throws IOException;

    @Deprecated
    void e(int i10, Object obj, Schema schema) throws IOException;

    void f(int i10, List<?> list, Schema schema) throws IOException;

    FieldOrder fieldOrder();

    void writeBool(int i10, boolean z6) throws IOException;

    void writeBoolList(int i10, List<Boolean> list, boolean z6) throws IOException;

    void writeBytesList(int i10, List<ByteString> list) throws IOException;

    void writeDouble(int i10, double d) throws IOException;

    void writeDoubleList(int i10, List<Double> list, boolean z6) throws IOException;

    @Deprecated
    void writeEndGroup(int i10) throws IOException;

    void writeEnum(int i10, int i11) throws IOException;

    void writeEnumList(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeFixed32(int i10, int i11) throws IOException;

    void writeFixed32List(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeFixed64(int i10, long j6) throws IOException;

    void writeFixed64List(int i10, List<Long> list, boolean z6) throws IOException;

    void writeFloat(int i10, float f) throws IOException;

    void writeFloatList(int i10, List<Float> list, boolean z6) throws IOException;

    void writeInt32(int i10, int i11) throws IOException;

    void writeInt32List(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeInt64(int i10, long j6) throws IOException;

    void writeInt64List(int i10, List<Long> list, boolean z6) throws IOException;

    void writeMessage(int i10, Object obj) throws IOException;

    void writeMessageSetItem(int i10, Object obj) throws IOException;

    void writeSFixed32(int i10, int i11) throws IOException;

    void writeSFixed32List(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeSFixed64(int i10, long j6) throws IOException;

    void writeSFixed64List(int i10, List<Long> list, boolean z6) throws IOException;

    void writeSInt32(int i10, int i11) throws IOException;

    void writeSInt32List(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeSInt64(int i10, long j6) throws IOException;

    void writeSInt64List(int i10, List<Long> list, boolean z6) throws IOException;

    @Deprecated
    void writeStartGroup(int i10) throws IOException;

    void writeString(int i10, String str) throws IOException;

    void writeStringList(int i10, List<String> list) throws IOException;

    void writeUInt32(int i10, int i11) throws IOException;

    void writeUInt32List(int i10, List<Integer> list, boolean z6) throws IOException;

    void writeUInt64(int i10, long j6) throws IOException;

    void writeUInt64List(int i10, List<Long> list, boolean z6) throws IOException;
}
