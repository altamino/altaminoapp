package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.FieldSet.FieldDescriptorLite;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
abstract class ExtensionSchema<T extends FieldSet.FieldDescriptorLite<T>> {
    abstract int a(Map.Entry<?, ?> entry);

    abstract Object b(ExtensionRegistryLite extensionRegistryLite, MessageLite messageLite, int i10);

    abstract FieldSet<T> c(Object obj);

    abstract FieldSet<T> d(Object obj);

    abstract boolean e(MessageLite messageLite);

    abstract void f(Object obj);

    abstract <UT, UB> UB g(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet, UB ub, UnknownFieldSchema<UT, UB> unknownFieldSchema) throws IOException;

    abstract void h(Reader reader, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    abstract void i(ByteString byteString, Object obj, ExtensionRegistryLite extensionRegistryLite, FieldSet<T> fieldSet) throws IOException;

    abstract void j(Writer writer, Map.Entry<?, ?> entry) throws IOException;

    ExtensionSchema() {
    }
}
